 # -*- coding: utf-8 -*-
 class Carta
   def initialize(palo, valor)
     @palo = palo
     @valor = valor
   end
   
   def to_s
     "#{@valor} de #{@palo}"
   end
 end
 
 class Baraja < Array
   #attr_reader :cartas
   @@palos = %w{Oros Copas Espadas Bastos}
   @@valores = %w{As 2 3 4 5 6 7 Sota Caballo Rey}
   def initialize
     @@palos.each {|p| @@valores.each {|v| self <<  Carta.new(p, v)}}
   end
 end
 

class Card
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
  
  def to_s
    "#{@rank} of #{@suit}"
  end
end

class Deck < Array
    #attr_reader :cards
    @@suits = %w{Spades Hearts Clubs Diamonds}
    @@ranks = %w{Ace 2 3 4 5 6 7 8 9 10 Jack Queen King}
    def initialize
      @@suits.each { |suit| @@ranks.each { |rank| self << Card.new(suit, rank)} }
    end
 end
 
 
 deck = Deck.new
 p deck.collect {|card| card.to_s}
 p deck
 
 baraja = Baraja.new
 p baraja.collect {|carta| carta.to_s}
 p baraja
 
 
