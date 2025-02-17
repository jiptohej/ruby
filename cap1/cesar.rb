#! /usr/bin/env ruby
# encoding: utf-8
#

class Cesar
   
   @Alfabeto="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
   @Encripta="defghijklmnopqrstuvwxyzabcDEFGHIJKLMNOPQRSTUVWXYZABC"
   
   @texto = "amigos"
   
   def encriptar(texto)
       @texto = texto.tr(@Alfabeto, @Encripta)
   end
   
   def desencriptar
	   @texto.tr(@Encripta, @Alfabeto)
   end
   
   puts Cesar
end


if __FILE__ == $0

	c = Cesar.new()

	e = c.encriptar("alfa")

	d = c.desencriptar
	
	puts e

	puts d

end
