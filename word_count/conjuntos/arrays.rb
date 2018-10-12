#! /usr/bin/env ruby
# --*-- coding: utf-8  --*--
#

def arrays_ej_1
  a = ("a".."z").to_a
  
  b = ('A'..'Z').to_a
  
  # unión de arrays: comunes y no comunes
  c = a | b
  
  print "el valor de a es:"
  p a
  print a
  print "\n"
  
  print "el valor de b es:"
  p b
  print b
  print "\n"
  
  print "el valor de c es:"
  p c
  print c
  print "\n"
  
  print a
  print "\n"
  
  print a[0]
  print "\n"
  
  print a[1]
  print "\n"
  
  p a.slice(1..3)
  print a.slice(1..3)
  print "\n"
  
  
  p a.find_all { |x| x < 'e' }
  
  p a.find_all { |x| x > 'e' }
  
  p a.find_all { |x| x == 'e' }
  
  p a.find_all { |x| x == 'e' }
  
end


 arrays_ej_1
