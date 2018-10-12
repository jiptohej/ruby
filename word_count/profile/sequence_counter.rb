#! /usr/bin/env ruby

# sequence_counter.rb

require 'profile'

total = 0

f = File.open("quijote.txt", "r")

f.each_byte do |car|
   ['a', 'b', 'c'].each do |c|
     if car == c
        total += 1
        break
     end
   end
end

if __FILE__ == $0

  puts "Total: #{total}"

end


