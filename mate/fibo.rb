#! /usr/bin/env ruby
# encoding: utf-8

def fibo(max)
  i, j= 1, 2
  while i < max
     yield i
     i, j = j, i+j
  end
end

fibo(100) {|x| puts x } 

