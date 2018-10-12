#! /usr/bin/env ruby
# encoding: utf-8

orden = ''
pwd = `pwd`.chomp

while (orden != '.')
  print pwd, ':'
  orden = gets.chomp
  system (orden)
end

puts '¡Vuelve pronto!'
