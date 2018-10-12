# -*- coding: utf-8 -*-
def registrar_entrada
  # versión iterativa y registro permanente
    nombre_fichero='diario.txt'
    puts "Lo que escribas se registrará en el fichero #{nombre_fichero}"
	while true
	  open(nombre_fichero, 'a') { |f|
	print '>'
	l = gets
	if l == ".\n"
	  f.close
	  return
	end
	f.puts l
}
end
end

def escoger_al_azar
nombre_fichero='diario.txt'
    open(nombre_fichero, 'r') { |f|
l = f.readlines
100.times { puts l[rand(l.size)] }
}	
end

def mostrar_cuaderno
nombre_fichero='diario.txt'
    open(nombre_fichero, 'r') { |f|
f.each { |l| puts l }
}
end

def menu
    texto ="
Tratamiento del Cuaderno de Bitácora
************************************
1. Ampliar Cuaderno
2. Mostrar Cuaderno
3. Seleccionar nombre de Cuaderno
4. Guardar Cuaderno
5. Vaciar Cuaderno
6. Escoger una línea al azar
0. Finalizar
Escoger la opción deseada...:"
 
    puts texto

end

menu
