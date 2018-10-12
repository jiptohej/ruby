# -*- coding: utf-8 -*-
Dir.entries("."); # array de ficheros y directorios del directorio en curso
Dir.chdir("ruby");# acceso al directorio ruby
File.exists?("piglatin");# determina si existe el fichero piglatin
File.open("piglatin");# abre un fichero
Dir.open("ruby");# abre un directorio

# abrir un fichero o directorio
open

# para leer una o varias líneas de un fichero
read
readlines
each o each_lines
entries
foreach
gets

# imprimir en un fichero
puts
print
printf
write

# cerrar un fichero o directorio
close

