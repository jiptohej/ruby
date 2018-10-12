Shoes.app :title => "Movimiento del raton" do
   @p = para
   animate do
     button, left, top = self.mouse
     @p.replace "mueve el ratón: #{button}, #{left}, #{top}"
   end
end
