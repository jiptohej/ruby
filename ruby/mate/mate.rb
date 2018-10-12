#! /usr/bin/ruby

#require 'Math'
include Math

puts Math.log(10)
puts log(10)

nf=10 # número de filas
nc=10 # número de columnas

m = Array.new(nf){Array.new(nc){0}}

p m

def mostrar(matriz)
    for f in (0...matriz.length)
     for c in (0...matriz[0].length)
       printf("%4.0f ", matriz[f][c])
     end
     print "\n"
    end
end

mostrar(m)

def mat_prod(matriz)
    for f in (0...matriz.length)
     for c in (0...matriz[0].length)
       matriz[f][c] = f*c
     end
     print "\n"
    end
end


mat_prod(m)

mostrar(m)

def mat_unidad(nf, nc)
    matriz = Array.new(nf){Array.new(nc){0}}  
    for f in (0...matriz.length)
     for c in (0...matriz[0].length)
      if f== c
       matriz[f][c] = 1
      else
       matriz[f][c] = 0
      end
     end
    end
    return matriz
end


a = mat_unidad(4, 4)

mostrar(a)

def mat_unidad(n)
    matriz = Array.new(n){Array.new(n){0}}
    for f in (0...matriz.length)
       matriz[f][f] = 1
    end
    return matriz
end


a = mat_unidad(10)

mostrar(a)


def mat_contra(n)
    matriz = Array.new(n){Array.new(n){0}}  
    for f in (0...matriz.length)
     for c in (0...matriz[0].length)
      if f+c==n-1
       matriz[f][c] = 1
      end
     end
    end
    return matriz
end

b = mat_contra(10)

mostrar(b)

