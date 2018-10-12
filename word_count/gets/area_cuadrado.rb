#! /usr/bin/ruby
def area_cuadrado()
   printf( "Base: ")
   b= gets.chomp.to_i
   printf("\nEl cuadrado de %d es igual a %d\n", b, b*b)
end

area_cuadrado()
