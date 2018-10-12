require 'java'

#ejecutar con jruby

stringHello="Hello World"
stringDate=java.util.Date.new

puts "#{stringHello.to_s}"
puts "Date:=#{stringDate.to_s}"

print "\npara finalizar pulse la tecla intro..."
gets
