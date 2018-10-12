# -*- coding: utf-8 -*-
# ex reserva enero 2012 (no utilizado)

def pedir_codigo_producto
    print "Introduce el código del producto entre 0 y 99:"
    n = gets.to_i
    while n < 0 or n > 99 
       puts "Error: el número debe ser mayor que cero y menor que 100"
       print "Introduce el código del producto entre 0 y 99:"
       n = gets.to_i
    end
    return n
end

def pedir_unidades_producto
	print "Introduce el número de unidades (positivo):"
	n = gets.to_i
	while n < 0
	   puts "Error: el número debe ser positivo"
	   print "Introduce el número de unidades (positivo):"
	   n = gets.to_i
	end
	return n
end

def pedir_precio_producto
	print "Introduce el precio del producto (positivo o cero):"
	n = gets.to_i
	while n < 0
	   puts "Error: el número debe ser positivo o cero"
	   print "Introduce el número de unidades (positivo o cero):"
	   n = gets.to_i
	end
	return n    
end


def pedir_datos_iniciales
    unidades=[]
    precios=[]
    codigo = pedir_codigo_producto
    while codigo != 0
      unidad = pedir_unidades_producto
      precio = pedir_precio_producto
      unidades[codigo]=unidad
      precios[codigo]=precio 
      codigo = pedir_codigo_producto
    end
    return [unidades, precios]
end
   

pedir_codigo_producto
pedir_unidades_producto

print "\npara finalizar pulse la tecla intro..."
gets



