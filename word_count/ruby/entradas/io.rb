# -*- coding: utf-8 -*-
#
# Cómo escribir la orden cat en ruby
#
# En este ejemplo se muestra la utilización de las variables globales $stdin,
# $stdout y $stderr con el fin de observar su utilización

$stdin.each() {|linea| $stdout.puts(linea) ; $stderr.puts(linea) }

# Obsérvese que, en primer lugar, se utiliza el método para
# obtener todas y cada una de las líneas de entrada (hasta ^D o ^C)
# y posteriomente, cada una de esas líneas se transmite al bloque, 
# técnicamente Proc, que las recibe y las muestra dos veces, 
# en primer lugar en la salida estándar y posteriormente en la de errores.
#
# $stdin
# $stdout
# $stderr
#
# Son variables que representan la entrada estándar, la salida
# estándar y la salida estándar de errores.
#
# Estas tres variables normalmente se encuentran asignadas a
# STDIN, STDOUT y STDERR, las cuales identificarn a la entrada
# estándar, a la salida estándar y a la salida estándar de errores,
# a no ser que se hayan asignado a algún otro fichero.
#
# Por ejemplo, si queremos almacenar nuestros resultados
# en el fichero 'datos.txt', podemos hacerlo del siguiente modo:
#

resultados = File.new('resultados.txt', 'w')
$stdout=resultados
(1..100).each {|n| puts n}
resultados.close
$stdout=STDOUT

