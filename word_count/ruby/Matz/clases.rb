#! /usr/bin/ruby
# coding: utf-8

class Mamifero
  def respira
    puts "Inhalar y exhalar"
  end
end

class Gato < Mamifero
  def maulla
    puts "miau"
  end
end

class Pajaro
   def aseo
     puts "me limpio las plumas"
   end
   def vuela
     puts "estoy volando"
   end
end

class Pinguino < Pajaro
  def vuela
     puts "yo sólo nado"
  end
end


wiky = Gato.new()

wiky.respira
wiky.maulla

alfa = Pinguino.new()
alfa.vuela



