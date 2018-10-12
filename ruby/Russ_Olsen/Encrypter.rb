#! /usr/bin/ruby
# coding: utf-8
class Encrypter

  def initialize(key)
     @key = key
  end

  def encrypt(reader, writer)
     key_index = 0
     while not reader.eof
      clear_char = reader.getc
      encripted_char = clear_char.to_i ^ @key[key_index].to_i
      writer.putc(encripted_char)
      key_index =  (key_index + 1) % @key.size
     end
  end

end

class StringIOAdapter
   
   def initialize(string)
      @string = string
      @position = 0
   end
   
   def getc
     if @position >= @string.length
        raise EOFError
     end  
     ch = @string[@position]
     @position += 1
     return ch
   end
   
   def eof?
     return @position >= @string.length
   end
   
end


reader = File.open('documento.txt')
writer = File.open('documento.crp', 'w')

encrypter = Encrypter.new('abracadabra')
encrypter.encrypt(reader, writer)

