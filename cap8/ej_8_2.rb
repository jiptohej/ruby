#! /usr/bin/env ruby
# encoding: utf-8
#

class Aviso
   @@translations = {
      :en => 'Wet Floor',
      :es => 'Suelo deslizante',
      :fr => 'Le sol est humide'
      }
      
      def initialize(language=:en)
        @language = language
      end
      
      def warn
        @@translations[@language]
      end
      
end




class Fate
   NAMES = ['Athos', 'Porthos', 'Aramis'].freeze
   @@numer_instantiated = 0
   def initialize
    if @@numer_instantiated.== NAMES.size 
       puts "!Ya se han utilizado todos los papeles posibles!"
       return  
    end
    if @@numer_instantiated.>= NAMES.size
      raise ArgumentError, 'Sorry, there are only three  Fates.'
    end
    @name = NAMES[@@numer_instantiated]
    @@numer_instantiated += 1
    puts "I give you... #{@name}!"
   end
 end
 
 
 if __FILE__ == $0
 
	puts Aviso.new.warn

	puts Aviso.new(:es).warn

	puts Aviso.new(:fr).warn

	Fate.new
	 
        Fate.new
	 
        Fate.new
	 
	Fate.new
	 
 end
 
