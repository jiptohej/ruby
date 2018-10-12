Shoes.app do
   background black
   fill white
   @circ = oval 0, 0, 100, 100
   motion do |top, left|
     @circ.move top - 50, left - 50
   end
end
