# encoding: utf-8
Shoes.app do
  @e = edit_line :width => 400
  button "O.K." do
   alert @e.text.reverse
  end
end

