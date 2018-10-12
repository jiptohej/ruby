#! /usr/bin/env ruby
# encoding: utf-8
#

class Cesar
   
   Alfabeto="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
   Encripta="defghijklmnopqrstuvwxyzabcDEFGHIJKLMNOPQRSTUVWXYZABC"
   
   @texto = ""
   
   def encriptar(texto="dabale arroz a la zorra el abad")
       @texto = texto.tr(Alfabeto, Encripta)
   end
   
   def desencriptar
	   @texto.tr(Encripta, Alfabeto)
   end
   
end


if __FILE__ == $0

	c = Cesar.new()

	e = c.encriptar("alfa")

	d = c.desencriptar

	puts c
	
	puts e

	puts d

end
