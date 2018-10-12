 Shoes.app do
   stack do
     # Background, text and a button: both are elements!
     @back  = background green
     @text  = banner "A Message for You, Rudy"
     @press = button "Stop your messin about!"
     # And so, both can be styled.
     @text.style :size => 12, :stroke => red, :margin  =>10
     @press.style :width => 400
     @back.style :height =>  10
   end
 end
