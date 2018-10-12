#! /usr/bin/env ruby
# encoding: utf-8
require 'tk'

root = TkRoot.new { title "Nombre de la pantalla" }

#definimos una etiqueta dentro de la ventana
TkLabel.new(root) do
   text 'Hello, World!'
   #pack { padx 450 ; pady 450; side 'left' }
   pack { padx 450 ; pady 450; side 'left' }
end

Tk.mainloop
