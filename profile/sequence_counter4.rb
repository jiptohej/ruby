#! /usr/bin/env ruby

# sequence_counter4.rb

require 'profile'

total = 0

# cuenta las letras a, b, o c.

f = File.open("quijote.txt", 'r')

f.each_byte {|car| total += 1 if car =~ /[abc]/ } 

if __FILE__ == $0

  puts "Total: #{total}"

end


  %   cumulative   self              self     total
 time   seconds   seconds    calls  ms/call  ms/call  name
 50.54     4.99      4.99  1020280     0.00     0.01  nil#
 36.04     8.56      3.56        1  3561.22  9878.84  IO#each_byte
 13.39     9.88      1.32  1020280     0.00     0.00  Kernel#=~
  0.01     9.88      0.00        1     0.67     0.67  TracePoint#enable
  0.00     9.88      0.00        1     0.04     0.04  File#initialize
  0.00     9.88      0.00        1     0.02     0.06  IO.open
  0.00     9.88      0.00        1     0.00     0.00  Integer#to_s
  0.00     9.88      0.00        1     0.00     0.00  IO#write
  0.00     9.88      0.00        1     0.00     0.00  IO#puts
  0.00     9.88      0.00        1     0.00     0.00  Kernel#puts
  0.00     9.88      0.00        1     0.00     0.00  TracePoint#disable
  0.00     9.88      0.00        1     0.00  9881.94  #toplevel
Total: 0


