#! /usr/bin/env ruby
require 'tk'

root = TkRoot.new { title "Hello, World!" }
TkLabel.new(root) do
   text 'Hello, World!'
   pack { padx 150 ; pady 150; side 'left' }
end
Tk.mainloop
