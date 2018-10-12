#! /usr/bin/env ruby
# encoding: utf-8

# longitud de una cadena (carácter, palabra o frase)

puts "Escrito en el año del Señor de 2013"
puts "λ"
puts "λ".length   
puts "λ".bytesize   
puts "λ".encoding   


# Nota interesante:
# ****************
# Como puede observarse, el número de bytes utilizados
# para almacenar una letra española es variable,
# es decir las letras acentuadas y las que no son ASCII
# ocupan 2 bytes y el resto 1 byte; sin embargo,
# su longitud es siempre la misma, es decir, 1 carácter.
#
puts "a".bytesize
puts "á".bytesize
puts "a".length
puts "á".length

puts "José Luis Torre Hernández".length # debería proporcionar el valor 25
