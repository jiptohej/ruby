#! /usr/bin/env ruby

# sequence_counter.rb

require 'profile'

total = 0

# cuenta las letras a, b, o c.

['a'..'x'].each {|car| total += 1 if car =~ /[abc]/ } 

if __FILE__ == $0

  puts "Total: #{total}"

end


