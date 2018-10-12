# La  utilización de la fecha de nacimiento en la instancia de la clase,
# permite calcular la edad de una persona sin necesidad de introducirla,
# ya que  se puede calcular como diferencia entre la fecha de nacimiento
# y la fecha actual del sistema (suponiendo que este se encuentre en hora).

class Persona
	def initialize(nombre, apel1, apel2, fnacimiento, fdefuncion=false)
		@nombre = nombre
		@apel1 = apel1
		@apel2 = apel2
		@fnacimiento = fnacimiento
		@fdefuncion = fdefuncion
	end
	def edad
		# if fdefuncion != nil
		return Time.now - @fnacimiento
	end 
	
	def fnacimiento
	    @fnacimiento
	end
	
end

p1 = Persona.new("Gorgonio Antonio", "Torre", "Cortes", "16/12/1920", "26/04/2009")
puts p1.fnacimiento

