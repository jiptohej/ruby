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
    nf = matriz.length
    nc = matriz[0].length
    alias imprimir puts
    imprimir "A continuación se muestra una matriz de #{nf}x#{nc}"
    for f in (0...nf)
     for c in (0...nc)
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

def matriz(nf, nc)
    matriz = Array.new(nf){Array.new(nc){0}}
    return matriz
end

m = matriz(4,6)
mostrar(m)

n = matriz(6, 5)
mostrar(n)

def multiplicar(a, b)
    nfa = a.length
    nca = a[0].length
    nfb = b.length
    ncb =b[0].length

    if nca != nfb
       puts "no son multiplicables" 
    end

    r = Array.new(nfa){Array.new(ncb){0}}
    for f in 0...nfa
      for c in 0...ncb
        for k in 0...nca
           r[f][c] =  r[f][c] + a[f][k]*b[k][c]
        end
      end
    end

    return r
end

# ejemplo de producto de dos matrices

m1 = [[1, 0, 1, 1],
      [0, 1, 1, 1],
      [1, 2, 1, 0]]

m2 = [[1, 0],
      [0, 1],
      [1, 1],
      [0, 1]]

producto = multiplicar(m1, m2)

mostrar(producto)

m1 = [[ 1, 0, 2],
      [-1, 3, 1]]

m2 = [[3, 1],
      [2, 1],
      [1, 0]]

producto = multiplicar(m1, m2)

mostrar(producto)

m1 = [[2, 0, 1],
      [3, 0, 0],
      [5, 1, 1]]

m2 = [[1, 0, 1],
      [1, 2, 1],
      [1, 1, 0]]

alias mulmat multiplicar

producto = mulmat(m1, m2)

mostrar(producto)

alias imprimir puts
imprimir "Fin de las pruebas de multiplicación de matrices."

