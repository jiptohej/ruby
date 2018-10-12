#! /usr/bin/env ruby
# encoding: utf-8
#

def área_triángulo(base=1, altura=1)
    base*altura/2.0
end

puts área_triángulo(10, 10)

def área_triángulo(base: 1, altura:1)
    base*altura/2.0
end

if __FILE__ == $0

	puts área_triángulo altura:5 , base: 2

	puts área_triángulo(altura:5 , base:2) 

end




