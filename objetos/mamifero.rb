# coding: utf-8

class Mamifero
  def respirar
    puts 'inspirar,... espirar'
  end
end
 
# el símbolo < indica que
# Gato es una subclase de Mamifero
 
class Gato < Mamifero
  def maullar
    puts 'Miaaaaaaaaaaau'
  end
end


 
cribas = Gato.new
cribas.respirar
cribas.maullar


class Ave
  def asear
    puts 'Me estoy limpiando mis plumas.'
  end
 
  alias limpiar asear
  
  def volar
    puts 'Estoy volando.'
  end
end
 
class Pinguino < Ave
  def volar
    puts 'Lo siento, no soy capaz de volar.'
  end
end
 
p = Pinguino.new
p.asear
p.volar

dali  = Ave.new
dali.asear
dali.limpiar
dali.volar
