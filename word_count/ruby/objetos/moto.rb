# coding: utf-8

class Moto  
 
  def initialize(marca, color)  
    # Atributos (variables del objeto)  
    @marca = marca  
    @color = color  
  end  
 
  def arrancar  
    if (@estado_motor)  
      puts 'El motor está encendido.'  
    else  
      @estado_motor = true  
      puts 'arrancando el motor...'  
    end  
    self
  end  
  
  alias encender arrancar
  
  def apagar
    if (@estado_motor)
      puts '...apagando el motor.'
      @estado_motor = false
    else
      puts 'El motor está apagado.'
    end
    self
  end
  
 
end
