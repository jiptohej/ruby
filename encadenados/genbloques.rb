
   require 'digest'
   require 'find'
   
   ############################################ ejemplo de bloque #####################################
   # bloque: 17:anterior md5:acc9355f3f4ad7720a976923de5f3c84
   # 24 c
   # 9 i
   # 6 c
   # 24 c
   # 2018-10-26 20:07:26 +0200
   # iteraciones: 23
   ############################################ fin de ejemplo de bloque ##############################
   
   def genBlock (nr_bloque, md5_anterior, datos)
      md5 = Digest::MD5.new
      
      pista = 0
      
      loop do
   
         pista += 1
         
         mensaje = "bloque: "
         mensaje += nr_bloque.to_s  
	 mensaje +=  ":anterior md5:" + md5_anterior + "\n"
         mensaje += datos
	 mensaje += Time.now.to_s + "\n"
         mensaje += "iteraciones: "
         mensaje += pista.to_s 
         mensaje += "\n"
   
         puts mensaje
         puts "----------------------------------"
         
         # crear un fichero con  el mensaje adecuado 
	 # y nombre #{nr_bloque}-#{md5_anterior}
	 #
         nombre = "bloque/#{nr_bloque.to_s}-#{md5_anterior}"
         File.open(nombre, "w") do |f| 
               f.write("#{mensaje}") 
         end
         md5 = Digest::MD5.file nombre 
         md5sum = md5.hexdigest
  
         puts "  " + md5sum.to_s 
           
         car = md5sum[0]
     
         if car == 'a' 
             h = [ md5sum.to_s, mensaje ]

	    # renombrar el fichero 
	    nuevo =  "bloque/" + nr_bloque.to_s + "-" + md5sum.to_s
	    File.rename nombre, nuevo 
         end
          
         return h  if car == 'a'
     
        end
   end
    
   ############################################ ejemplo de datos  #####################################
   # bloque: 17:anterior md5:acc9355f3f4ad7720a976923de5f3c84
   # 24 c
   # 9 i
   # 6 c
   # 24 c
   # 2018-10-26 20:07:26 +0200
   # iteraciones: 23
   ############################################ fin de ejemplo de datos# ##############################
   
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
   
       datos  # recordar que es un return implícito
   
   end
   
   def mostrarArray (a)
       puts "******** mostrar las parejas *********** "
       for i in 0...(a.size)
          print "md5: "
          puts a[i][0] # md5 de los datos de este bloque
          puts a[i][1] # nr bloque : md5 bloque anterior y datos
       end
   end
   
   def obtenerDigest
       Find.find('bloque') do |x| 
          if File.file? x
              puts Digest::SHA256.file "#{x}" 
          end
       end
   end

   def obtenerMD5
       Find.find('bloque') do |x| 
          if File.file? x
             puts Digest::MD5.file "#{x}" 
          end
       end
   end

   def genBloques(nr_bloques=1000) # número de bloques a generar en la simulación 

      a = Array.new
      nr_bloque = 0        # número del bloque inicial
      nr_bloques = 100     # número de bloques a generar en la simulación
   
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
   
   end


   if __FILE__ == $0
    
    genBloques(99)
   
   end
   
