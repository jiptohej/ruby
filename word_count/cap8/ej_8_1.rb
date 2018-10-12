#! /usr/bin/env ruby
# encoding: utf-8
#

class Duck
   def quack
   # pato: papar
       'Quack!'
   end
   
   def swim
       'Paddle paddle paddle...'
   end
end

class Goose
   def honk
   # ganso: graznido, graznar o voznar
       'Honk!'
   end
   
   def swim
       'Splash splash splash...'
   end
end

class DuckRecording
   def quack
       play
   end
   
   def play
       'Quack!'
   end
end

def make_it_quack(duck)
   duck.quack
end

def make_it_swim(duck)
    duck.swim
end

puts make_it_quack(Duck.new)

puts make_it_quack(DuckRecording.new)

puts make_it_swim(Duck.new)

puts make_it_swim(Goose.new)

class Frog
   def initialize(name)
       @name = name
   end
   
   def speak
   # es un hecho conocido que sólo las ranas con nombres largos
   # hablan en inglés.
       @speaks_english =  @speaks_english || @name.size > 6
       @speaks_english ? "Hi I'm #{@name}, a talking frog." : 'Ribbit.'
   end
end

class Frog
   attr_reader :name
end

class Frog
   attr_accessor :speaks_english
end

puts leonard = Frog.new('Leonard').speak

lucas = Frog.new('Lucas')

puts lucas.name

puts lucas.speak

puts lucas.speaks_english

michael = Frog.new("Michael");

print michael.inspect

michael.speak

puts michael.inspect


puts michael.instance_variable_get("@name") ; # infringe las reglas de encapsulación

puts michael.instance_variable_set("@name", "Bob"); # infringe las reglas de encapsulación

puts michael.name

puts michael.instance_variable_set("@name", "Gorgonio"); # infringe las reglas de encapsulación

puts michael.speak

class Frog
   define_method(:scientific_name) do
      species = 'vulgaris'
      species = 'locuacious' if instance_variable_get('@speaks_english')
      "Rana #{species}"
   end
end

puts michael.scientific_name


       
