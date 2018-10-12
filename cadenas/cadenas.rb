#! /usr/bin/env ruby
# coding: utf-8
# encoding: iso-8859-1 # similar a 1252 de Microsoft (difiere en comillas, ...)
# encoding: utf-8
# -*- coding: utf-8 -*-

# Ejemplo de utilización de caracteres multibyte
x="Dí lo que piensas y lo que quieres con discreción"
print x[1]
p x[1]
printf("%c", x[1])
puts x[1]
puts x

=begin
	La primera línea se utiliza para que el S.O. sepa el intérprete
	que debe utilizar para ejecutar este programa (script)

	La segunda línea se utiliza para indicar el tipo de codificación
	que se ha utilizado en este fichero.

	Las siguientes líneas son ejemplos en los que se indican 
	otros tipos de codificación.

	El resto, es un ejemplo de cómo se muestran los caracteres.
=end
