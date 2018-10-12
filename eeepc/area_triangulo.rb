#! /usr/bin/ruby
# coding: utf-8
# area_triángulo.rb
system('clear')
printf( "Base: ")
b= gets.chomp.to_i
printf( "Altura: ")
a= gets.chomp.to_i
printf("\nEl área del triángulo de base %d y altura %d es igual a %d\n", b, a, b*a/2)
