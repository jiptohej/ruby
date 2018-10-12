#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
#
require 'set'
s = Set.new((1..10).collect)

# dividir el conjunto en dos subconjuntos clasificados
# mediante la relación de equivalencia: x < 5
#

s.divide {|x| x < 5}

print s.first.to_s

