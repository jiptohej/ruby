#! /usr/bin/ruby
def fact(n)
    if n==1
       1
    else
       n * fact(n-1)
    end
end

printf("n:")
n= gets.chomp.to_i
printf("\nel factorial de %d es: %d\n", n, fact(n))
