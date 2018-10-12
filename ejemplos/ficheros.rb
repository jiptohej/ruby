# -*- coding: utf-8 -*-

class Proyectos
# se leen los datos de los alumnos de un fichero
	
	def initialize (nom_fich='proyectos.txt')
	    @nom_fich = 'proyectos.txt'
	    @n=0
		@nombre=[]
		@apel1=[]
		@apel2=[]
		@nota_proyecto=[]
		leer_datos
	end


	def leer_datos # almacena los datos del fichero 'proyectos.txt' en los arrays utilizados
		i=0
		open(@nom_fich, 'r') do |f|
			f.each { |linea| 
				  @nombre[i], @apel1[i], @apel2[i], @nota_proyecto[i] = linea.split(':')
				  i+=1
			}
		end
		@n = i # número de elementos; los índices van desde 0 hasta @n-1
	end

 # mostrar los datos leidos
	def mostrar_datos
		 0.upto(@n-1) {|i| puts "#{i}:#{@nombre[i]}:#{@apel1[i]}:#{@apel2[i]}:#{@nota_proyecto[i]}"}
	end
	
	def mostrar_invertidos
	    (@n-1).downto(0) {|i| puts "#{i}:#{@nombre[i]}:#{@apel1[i]}:#{@apel2[i]}:#{@nota_proyecto[i]}"}
	end
	
	def mostrar_al_azar(repeticiones=10)
	    for k in 1..repeticiones
			i = rand(@n)
			puts "Prueba(#{k}):#{i}:#{@nombre[i]}:#{@apel1[i]}:#{@apel2[i]}:#{@nota_proyecto[i]}"
		end
	end
	

end



p =  Proyectos.new()

+

p.mostrar_datos
p.mostrar_invertidos
p.mostrar_al_azar 100

p = Proyectos.new('lista.txt')
p.mostrar_datos
p.mostrar_invertidos
p.mostrar_al_azar 10






