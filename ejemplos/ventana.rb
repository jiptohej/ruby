require 'ruby2d'

tick = 0

set width: 100
set height: 100
set title: "Colores"


update do
  if tick % 60 == 0
    set background: 'random'
  end
  tick += 1
  close if tick > 6000
end

show
