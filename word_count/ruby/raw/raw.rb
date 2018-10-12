#! /usr/bin/env ruby
# encoding: utf-8

require 'curses'

include Curses

init_screen
noecho

trap(0) { echo }

puts "pulsa una tecla y escape para terminar"
while (c = getch) != ?\e do
  setpos(0, 0)
  addstr("has pulsado: #{c.chr.inspect}")
end
