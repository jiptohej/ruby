# lectoescritura
require 'scanf'

def ejemplo
      fich_entrada = 'datos.txt'
      fich_salida = 'productos.txt'
      mostrar_fichero(fich_entrada)
      copiar_linea_a_linea(fich_entrada, fich_salida)
      printf("se ha copiado el fichero %s en %s\n", fich_entrada, fich_salida)
end

      
def   copiar_linea_a_linea(entrada, salida)
      fs = File.open(salida, 'w')
	  File.readlines(entrada, 'r').each do |linea|
		  fs.printf("%s", linea)
	  end
	  fs.close
end

def   mostrar_fichero(nombre)
      File.readlines(nombre).each do |linea|
		print("> #{linea}")
	  end
end
      
def   leer_coordenadas(nombre)
      fi = File.open(nombre, 'r')
      while linea = fi.gets
            x, y = linea.scanf("%d%d")
            #printf ("x:%d y:%d\n", x, y) # no
            #printf ("x:%d y:%d\n", x, y) # ok
            printf "%d %d \n",  x, y # ok
            printf "%i %i \n",  x, y # ok
      end
      fi.close()

end

def   ver_fichero(nombre)
	  File.open('datos.txt', 'r') do |f1|
         f1.each do |linea|
            puts linea
         end
      end
end

def   nover_fichero(nombre)
      File.open('datos.txt', 'r') do |f1|
        f1.readlines do |linea|
           puts linea
        end
      end
end

def   cat_fichero(nombre)

	  File.open('datos.txt', 'r') do |f1|
	    while linea = f1.gets
			puts linea
	    end
      end

end

def s_o_n(mensaje)
    printf "%s:", mensaje
    rta = gets
    rta.downcase!
    while not rta =~ /^[ns]$/
		printf "%s:", mensaje
		rta = gets
		rta.downcase!
	end
	return rta
end

# mostrar_fichero 'datos.txt'

# ver_fichero 'datos.txt'

# nover_fichero 'datos.txt'

# cat_fichero 'datos.txt'

# ejemplo

leer_coordenadas 'parejas.txt' # ok

rta = s_o_n 'Desea continuar?'

#printf "(%s)\n", gets.chomp.downcase

print "\npara finalizar pulse la tecla intro..."
gets
