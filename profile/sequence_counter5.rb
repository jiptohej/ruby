#! /usr/bin/env ruby

# sequence_counter5.rb

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


  %   cumulative   self              self     total
 time   seconds   seconds    calls  ms/call  ms/call  name
 36.21    20.76     20.76  4081120     0.01     0.02  nil#
 27.58    36.58     15.81  3060840     0.01     0.01  Integer#==
 22.06    49.22     12.65  1020280     0.01     0.05  Array#each
  7.50    53.52      4.30  3060840     0.00     0.00  String#==
  6.66    57.34      3.82        1  3817.05 57338.45  IO#each_byte
  0.00    57.34      0.00        1     0.70     0.70  TracePoint#enable
  0.00    57.34      0.00        1     0.08     0.08  IO#write
  0.00    57.34      0.00        1     0.02     0.02  File#initialize
  0.00    57.34      0.00        1     0.01     0.03  IO.open
  0.00    57.34      0.00        1     0.01     0.09  IO#puts
  0.00    57.34      0.00        1     0.01     0.10  Kernel#puts
  0.00    57.34      0.00        1     0.01     0.01  TracePoint#disable
  0.00    57.34      0.00        1     0.00     0.00  Integer#to_s
  0.00    57.34      0.00        1     0.00 57342.00  #toplevel
Total: 0


