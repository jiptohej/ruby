#! /usr/bin/env ruby
# encoding: utf-8
 
# λ is the Greek character Lambda here
puts "λ"
puts "λ".length # => 1
puts "λ".bytesize # => 2
puts "λ".encoding # => UTF-8
puts "áéíóúÁÉÍÓÚÜüñÑ"
puts "á".length
puts "á".bytesize
puts "áéíóúÁÉÍÓÚÜüñÑ".length
puts "áéíóúÁÉÍÓÚÜüñÑ".bytesize
p "λ"
p "λ".length # => 1
p "λ".bytesize # => 2
p "λ".encoding # => UTF-8
p "áéíóúÁÉÍÓÚÜüñÑ"
p "á".length
p "á".bytesize
p "áéíóúÁÉÍÓÚÜüñÑ".length
p "áéíóúÁÉÍÓÚÜüñÑ".bytesize
print "λ"
print "λ".length # => 1
print "λ".bytesize # => 2
print "λ".encoding # => UTF-8
print "áéíóúÁÉÍÓÚÜüñÑ"
print "á".length
print "á".bytesize
print "áéíóúÁÉÍÓÚÜüñÑ".length
print "áéíóúÁÉÍÓÚÜüñÑ".bytesize

# ························································
# Iteradores de cadenas
# *********************
# obsérvese que existen varios iteradores para las cadenas,
# es comprensible que no exista el iterador each, 
# ya que podría tener diferentes sentidos, 
# por ello sólo existen iteradores más específicos.

x="alfa\naño"
# tres iteradores
x.each_byte  # el valor numérico de cada uno de los bytes que componen los caracteres
x.each_char  # cada uno de los caracteres que componen la frase
x.each_line  # cada una de las líneas que componen la frase

# utilizando los tres iteradores
x.each_byte {|b| puts b}
x.each_char {|c| puts c}
x.each_line {|l| puts l}
# evidentemente, las variables b, c y l se utilizan para recordar
# que recibirán un byte, carácter o línea respectivamente,
# pero se podía haber utilizado otra variable en todas ellas; por ejemplo:

x.each_byte {|x| puts x}
x.each_char {|x| puts x}
x.each_line {|x| puts x}

# obsérvese que las variables x en los bucles,
# no tienen nada que ver con la variable local x del
# programa principal
# ························································

