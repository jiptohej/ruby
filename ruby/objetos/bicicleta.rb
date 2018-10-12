# coding: utf-8

class Bicicleta
  attr_reader :marchas, :ruedas, :asientos, :sillines, :sillín # se hablará de attr_reader
  def initialize(marchas = 1)
    @ruedas = 2
    @asientos = @sillines = @sillín = 1
    @marchas = marchas
  end
end
 
class Tandem < Bicicleta
  def initialize(marchas)
    super
    @asientos = @sillines = @sillín = 2
  end
end
