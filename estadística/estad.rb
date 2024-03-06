#! usr/bin/env ruby
# encoding: utf-8
#

def media(vector)
    vector.inject(0.0) { |sx, x| sx += x } / vector.size

    # al método inject se le proporciona inicialmente el valor 0.0
    # con el fin de que se tome como el primer argumento sx (la primera vez),
    # el resto de veces ya tiene su propio valor.
end

def mediana(vector, clasificado=false)

    return nil if vector.empty?
    
    vector = vector.sort unless clasificado
    mitad = vector.size / 2
    return vector.size % 2 == 1? vector[mitad] 
                               : media(vector[mitad-1..mitad])
    # la mediana es el elemento que se encuentra 
    # en la mitad de la población ordenada
end

def moda(vector, todas=true)
    histograma = vector.inject(Hash.new(0)) { |h, x| h[x] += 1; h} 
    modas = nil
    histograma.each_pair do | item, times |
      modas << item if modas && times==modas[0] && todas
      modas = [times, item] if !modas && times > 1 or (modas && times>modas[0])
    end
    return modas ? modas[1...modas.size] : modas
    
    # La moda es el elemento que más se repite,
    # si los elementos no se repiten, no existe.
end


if __FILE__ == $0

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
   p v

   print "El valor medio es igual a : "
   p media(v)


   print "El valor de la mediana es igual a :"
   puts mediana(v)
   print "A continuación se mostrarán los valores de la moda:"
   print moda(v)

end


