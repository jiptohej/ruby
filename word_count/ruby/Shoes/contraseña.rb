Shoes.app do
  @e = edit_line :width => 400, :secret => true
  button "O.K." do
     alert @e.text
  end 
  contenidos = ask("mensaje")
end

