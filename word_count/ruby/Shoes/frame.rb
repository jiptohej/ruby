Shoes.app do
   @counter = para "STARTING"
   animate(1) do |frame|
     @counter.replace "FRAME #{frame}"
   end
end
