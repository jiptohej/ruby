# coding: utf-8

class Animal
  attr_reader :name, :eyes, :apendages
  
  def initialize(name, eyes, apendages)
    @name, @eyes, @apendages = name, eyes, apendages
  end
  
  def inspect
    # p @name, @eyes, @apendages
    print "nombre: ", @name, " ojos: ", @eyes, " apéndices: ", @apendages, "\n"
  end
 end
 
 animals = [ Animal.new('octupus', 2, 8), Animal.new('spider', 6, 8), 
             Animal.new('bee', 5, 6), Animal.new('elephant', 2, 4),
             Animal.new('crab', 2, 10)]
             
 clasificación = animals.sort_by{|x| x.apendages}
 
 p clasificación
 
 clasificación = animals.sort_by{|x| x.eyes}
 
 p animals
 
 p clasificación
 
 clasificación.each do |x|
    x.inspect
 end
 
 
 class Frog
   attr_accessor :name
   def initialize(name)
     @name=name
   end
   def speek
     @speeks_english ||= @name.size > 6
     @speeks_english ? "Si, yo soy #{@name}, la rana que habla." : 'N....!'
   end
 end
 
 ranas = []
 
 r1 = Frog.new('Leocadia')
 
 ranas << r1
 
 puts r1.speek
 
 r2 = Frog.new('Zeta')
 
 ranas << r2
 
 puts r2.speek
 
 puts r2
 
 puts r2.name
 
 puts r1.name
 
 puts "Los nombres de las ranas del pantano son las siguientes:"
 
 ranas.each {|rana| puts "Mi nombre es ...#{rana.name}." }
 
 
