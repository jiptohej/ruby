 Shoes.app do
     timer(5) do
        alert("Your five seconds are up.")
     end
     stack :margin => 10 do
       para "Pick a card:"
       list_box :items => ["Jack", "Ace", "Joker"]
       para "Escoge un palo:"
       list_box :items => ["Oros", "Copas", "Espadas", "Bastos"]
     end
 end
