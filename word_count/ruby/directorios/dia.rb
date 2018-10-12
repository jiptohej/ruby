#! /usr/bin/ruby
# encoding: utf-8

require 'date'

d = Date

printf( "\n%s\n", d.today)

printf( "\n%s\n", d.rfc2822) # no

printf( "\n%s\n", Date.new)

printf( "\n%s\n", Date.commercial)
