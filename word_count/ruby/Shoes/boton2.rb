Shoes.app :resizable => true  do
  @e = edit_line :width => 400
  button "O.K." do
     @e.stroke = red
     alert @e.text
  end 
end

