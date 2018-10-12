# -*- coding: utf-8 -*-
def pedir_codigo_producto
    print "Introduce un numero entre 0 y 99:"
    n = gets.to_i
    while n < 0 or n > 99 
       puts "Error"
       print "Introduce un numero entre 0 y 99:"
       n = gets.to_i
    end
    return n
end

def ejemplo
    n = pedir_codigo_producto()
    puts n
    print "El cuadrado de #{n} es igual a #{n*n}"
    print "\nEl cuadrado de ", n, " es igual a ", n*n
end

=begin
 Todos los objetos de Ruby tienen un método,
 denominado class, que proporciona la clase
 de dicho objeto.

 Ejemplos:

 23.class # Fixnum
 "Miriam".class  # String
 Fixnum.class  # Class
=end

puts 23.class # Fixnum
puts "Miriam".class  # String
puts Fixnum.class  # Class

 ejemplo

