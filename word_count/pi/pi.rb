# pi
#
# Obtener los primos de la secuencia de pi
 
require 'prime'

if __FILE__ == $0
  n = Math::PI 
  (1..100).each do |i|
   if n.to_int.prime? then puts n.to_int end
   n = n*10
  end 
end

