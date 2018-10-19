   require 'digest'
   
   def genBlock (nr_bloque, md5_anterior, datos)
      md5 = Digest::MD5.new
      
      pista = 0
      
      loop do
   
         pista += 1
         
         mensaje = "bloque "
         mensaje += nr_bloque.to_s  
         mensaje +=  ":digest bloque anterior:"  + md5_anterior + "\n"
         mensaje += datos
         mensaje += "iteraciones: "
         mensaje += pista.to_s 
         mensaje += "\n"
   
         puts mensaje
         puts "----------------------------------"
         
         File.open("bloque/#{nr_bloque.to_s}", "w") do |f| 
   		      f.write("#{mensaje}") 
   	 end
	 sha256 = Digest::SHA256.file "bloque/#{nr_bloque.to_s}" 
         md5sum = sha256.hexdigest

	 puts "  " + md5sum.to_s 
         
         car = md5sum[0]
   
         if car == 'a' 
		 h = [ md5sum.to_s, mensaje ]
         end
        
         # crear un fichero con  el mensaje y de nombre bloque_#{nr_bloque}.blk 
         # File.open(nombre, 'w').write mensaje
         return h  if car == 'a'
   
   
   
      end
   end
   
   def genDatos(n=1234)
       #srand n
       nr_alumnos = 25
       p_acierto = 0.75
       p_fallo   = 0.25
   
       datos = ""
   
       (1..4).each do 
          rta = rand()
      
          if rta < p_fallo 
      	    califica = "i\n" 
          else
      	    califica = "c\n" 
          end
      
          nr_alumno = rand(nr_alumnos)
      
          datos += nr_alumno.to_s + " " +  califica
       end
   
       datos 
   
   end
   
   def mostrarArray (a)
       puts "******** mostrar las parejas *********** "
       for i in 0...(a.size)
          print "md5: "
          puts a[i][0] # md5 de los datos de este bloque
          puts a[i][1] # nr bloque : md5 bloque anterior y datos
       end
   end
   
   
   if __FILE__ == $0
   
      a = Array.new
      nr_bloque = 0        # número del bloque inicial
      nr_bloques = 10000   # número de bloques a generar en la simulación
   
      md5 = Digest::MD5.new
      md5sum = md5.hexdigest
   
      md5.update 'bloque cero' # contenido del mensaje del bloque inicial
      datos = genDatos()       # podríamos hacer que siempre fuera el mismo
      bloque = genBlock(0, md5sum, datos)
   
      while nr_bloque < nr_bloques 
         a[nr_bloque] = bloque
         md5_anterior = bloque[0]
         nr_bloque += 1
         datos = genDatos()
         bloque = genBlock(nr_bloque, md5_anterior, datos)
      end
   
      mostrarArray a 
   end
   
