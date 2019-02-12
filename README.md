# ruby
Ejemplos de programas escritos en ruby

## En este repositorio encontrarás una colección de ejercicios 

### Ejercicios sencillos para una primera aproximación al lenguaje

- Ejemplo 1
- Ejemplo 2
- Ejemplo 3

### Ejemplo de código
```
require 'ruby2d'

interactive_squares = []

class InteractiveSquare
  def initialize(x, y)
    extend Ruby2D::DSL

    @square = Square.new(x: x, y: y, color: "green")

    @hover_event = on :mouse_move do |e|
      if @square.contains?(e.x, e.y)
        @square.color = "red"
      else
        @square.color = "green"
      end
    end

    @remove_event = on :mouse_up do |e|
      if e.button == :right
        if @square.contains?(e.x, e.y)
          self.remove
        end
      end
    end
  end

  def remove
    @square.remove
    off(@hover_event)
    off(@remove_event)
  end
end

on :mouse_down do |e|
  if e.button == :left
    interactive_squares << InteractiveSquare.new(e.x, e.y)
  end
end


if __FILE__ == $0

	show

end
```
A continuación se enumeran los apartados en órden de importancia

1. Apartado 1
2. Apartado 2
3. Apartado 3
