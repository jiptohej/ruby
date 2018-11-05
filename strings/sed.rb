# require 'find'
#
# vie oct 26 13:20:12 CEST 2018
#
# separar el número de bloque del digest de una lista (array) de ...
#
# "nr_bloque-digest"
#

ejs=[ "1-abxch234saxixhoecyyy", "2-abcdefabcdef0123456", "3-aaaaaaaaaaaaaaaaaaaaa" ]

ejs.each do |x|
   nr_bloque, digest = ejs[0].split("-")
   puts nr_bloque
   puts digest
   cadena[nr_bloque.to_i] = digest
   p cadena
end

puts ejs[0].split("-")

nr_bloque, digest = ejs[0].split("-")


# a partir de la lista de ficheros de un directorio, 
# cuyos nombres están formados por el número de bloque 
# y el digest correspondiente a dicho bloque,
# de la siguiente forma:
# 
# ejs=[ "1-abxch234saxixhoecyyy", "2-abcdefabcdef0123456", "3-aaaaaaaaaaaaaaaaaaaaa" ]
#
# podemos formar una estructura (inicialmente sencilla)
# inicialmente un array que contenga parejas,
# cuyo primer elemento es el número de bloque
# y cuyo segundo elemento sea el digest correspondiente,
# de forma similar a la siguiente:
# [["1", "abxch234saxixhoecyyy"], ["2", "abcdefabcdef0123456"], ["3", "aaaaaaaaaaaaaaaaaaaaa"]]
# de manera que cada uno de los elementos identifique el número
# de bloque y el digest de dicho bloque.
# Esto permite emparejar el número de bloque con el digest
# de dicho bloque (para la realización de pruebas de construcción correcta de bloques)
#
# ej. Comprobar que todos los bloque son correctos,
# bastará con recorrer la lista de bloques y comprobar
# que cada uno de los bloques tiene el digest correcto.
#
ejs.collect do |x|
	b, d = x.split('-')
end

# [ "1-abxch234saxixhoecyyy", "2-abcdefabcdef0123456", "3-aaaaaaaaaaaaaaaaaaaaa" ]
#
# [["1", "abxch234saxixhoecyyy"], ["2", "abcdefabcdef0123456"], ["3", "aaaaaaaaaaaaaaaaaaaaa"]] 

# [ "0-abxch234saxixhoecyyy", "1-abcdefabcdef0123456", "2-aaaaaaaaaaaaaaaaaaaaa" ]
#
# también sería interesante (quizás más) disponer de un array que indexado 
# por el número de bloque, proporcionara el diges, del siguiente modo:
#
# 
# [ "abxch234saxixhoecyyy", "abcdefabcdef0123456", "aaaaaaaaaaaaaaaaaaaaa" ]

# de este último modo, a partir del número de bloque (por indexación)
# podemos obtener el digest.
#
# $digest[nr_bloque] := <Proporciona de forma inmediata el digest de un número de bloque>
#
# Intentar ver cómo resulta utilizando la variable global $digest
# que represente un array de los digest de todos los bloques.
#
#
$digest= ejs.collect do |x| 
        b, d = x.split('-')
end

# funciona correctamente, y luego podemos hacer referencia a 
#
# $digest[0]
# $digest[1]
# $digest[2]
#
# Así puede quedar más sencillo:
#
# Partiendo de el array ejs

=> ["1-abxch234saxixhoecyyy", "2-abcdefabcdef0123456", "3-aaaaaaaaaaaaaaaaaaaaa", "4-bbbbbbbbbbbbbbbbbbb"] 

$digest = ejs.collect {|x| b, d = x.split('-') }

=> [["1", "abxch234saxixhoecyyy"], 
    ["2", "abcdefabcdef0123456"], 
    ["3", "aaaaaaaaaaaaaaaaaaaaa"], 
    ["4", "bbbbbbbbbbbbbbbbbbb"]]


$digest = ejs.collect {|x| b, d = x.split('-'); Array.new(d) }
#


#
#
Find.find('.') {|x| puts x }
