
def factorial(n)
    if n == 0
       1
    else
       n * factorial(n-1)
    end
end

x=100
puts "El factorial de #{x} es igual a:"
p factorial(x)

print "\npara finalizar pulse la tecla intro..."
gets
