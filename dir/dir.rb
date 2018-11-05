# dir 
#
# directorio de los fichero
#

require 'find'

def dir
	# Find.find('.').collect.inject([]) {|x, y| x << y if File.file? y }
	Find.find('.').collect.inject([]) do |x, y| 
		   print "x:"
		   p x
		   print "y:"
		   p y
		   puts "-------------------------------"
                   x << y
	end
end

if __FILE__ == $0
   ficheros = dir()
   p ficheros
end

