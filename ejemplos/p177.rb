# definimos un nuevo array con una serie de cadenas
array = ['alfa', 'alfa', 'alfa', 'beta', 'gamma']

# desde 3 hasta 4 mostrar array[3] y array[4]
3.upto(array.length-1) {|i| puts "Valor #{array[i]}"}

# pasar todas las letras de un array a mayúsculas
a = ['a', 'e', 'i', 'o', 'u']
a.collect! { |c| c.upcase }
puts a

# pasar todas las letras a minúsculas
a.collect! { |c| c.downcase }
puts a

# otro modo de mostrar los elementos de a
for x in a
   puts x
end

# mostrar los elementos de un rango
for x in (13..33)
    printf("%d ", x)
end


print "\npara finalizar pulse la tecla intro..."
gets

