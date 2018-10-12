#! /usr/bin/jruby

for i in (1..10)
  puts "#{i}"
end


# lectoescritura
def ejemplo
      fich_entrada = 'datos.txt'
      fich_salida = 'productos.txt'
      mostrar_fichero(fich_entrada)
      #copiar_linea_a_linea(fich_entrada, fich_salida)
      printf("se ha copiado el fichero %s en %s\n", fich_entrada, fich_salida)
end

      
def copiar_linea_a_linea(entrada, salida)
      File.readlines(entrada, 'r') do |linea|
     puts linea
      end
end

def mostrar_fichero(nombre)
      File.readlines(nombre, 'r') do |linea|
     puts linea
      end
end
      
      
ejemplo