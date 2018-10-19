unBloque = lambda { |x| puts x }

unBloque.call "¡Bienvenido a la Universidad del País Vasco!"



def llamar_a_bloque
   puts "iniciando llamar_a_bloque"
   yield
   puts "después de llamar al bloque"
   
   puts "iniciando llamar_a_bloque"
   yield
   puts "después de llamar al bloque"
end


llamar_a_bloque { puts "este bloque no recibe argumentos"}


def llamar_con_argumentos
    yield 1, 2, 3
end

llamar_con_argumentos { |x, y, z| puts "x=#{x}, y=#{y}, z=#{z}" }
