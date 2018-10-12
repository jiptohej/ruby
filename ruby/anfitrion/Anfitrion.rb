# -*- coding: utf-8 -*-
class MegaAnfitrion

  attr_accessor :nombres
  
  def initialize(nombres = "Mundo" )
    puts "Estamos ejecutando el fichero: #{__FILE__}"
    @nombres = nombres
  end
  
  def decir_hola
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("each")
      @nombres.each do |nombre|
        puts "Hola #{nombre}"
      end
    else
      puts "Hola #{@nombres}"
    end
  end
  
  def decir_adios
    if @nombres.nil?
     puts "..."
    elsif @nombres.respond_to?("join")
     puts "Adiós #{@nombres.join(", ")}. Vuelvan pronto."
    else
     puts "Adiós #{@nombres}. Vuelve pronto."
    end
  end
  
  if __FILE__ == $0
    ma = MegaAnfitrion.new
    ma.decir_hola
    ma.decir_adios
    
    ma.nombres = "Diego"
    ma.decir_hola
    ma.decir_adios
    
    ma.nombres = [ "Alberto", "Beatriz", "Carlos", "David", "Ernesto" ]
    ma.decir_hola
    ma.decir_adios
    
    ma.nombres = nil
    ma.decir_hola
    ma.decir_adios
    
  end
  
end
