#! /usr/bin/env ruby
# encoding: utf-8
#

def media(vector)
    return nil if vector.empty?
    vector.inject(0.0) { |sx, x| sx += x } / vector.size
end

# esto se podría convertir en un test
# primero rellenamos la mayor parte y luego modificamos algunos
v = (1..100).to_a
v[88]=100
v[89]=100
v[90]=100
v[10]=1
v[11]=1
v[12]=1
v[18]=3
v[19]=3
v[20]=3
puts "A continuación se muestran los datos de prueba"
print v
puts "\n"
puts "A continuación se muestran los datos de prueba"
p v
print "El valor medio es igual a : "

# v=[] # para probar que retorna el valor nil
p media(v)

def mediana(vector, clasificado=false)
    return nil if vector.empty?
    vector = vector.sort unless clasificado
    mitad = vector.size / 2
    return vector.size % 2 == 1 ? vector[mitad] : media(vector[mitad-1..mitad])
end

print "El valor de la mediana es igual a :"
puts mediana(v)

# La moda es el elemento que más se repite,
# si los elementos no se repiten, no existe la moda.

def moda(vector, buscar_todas=true)
    histograma = vector.inject(Hash.new(0)) { |h, x| h[x] += 1; h} # x integer
    modas = nil
    histograma.each_pair do | item, times |
      modas << item if modas && times==modas[0] && buscar_todas
      modas = [times, item] if !modas && times > 1 or (modas && times>modas[0])
    end
    return modas ? modas[1...modas.size] : modas
end

print "A continuación se mostrarán los valores de la moda:"
print moda(v)

