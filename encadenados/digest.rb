   require 'digest'
   
   def genBlock (nr_bloque, md5_anterior, datos)
      md5 = Digest::MD5.new
      
      pista = 0
      
      loop do
   
         pista += 1
         
         mensaje = "bloque "
         mensaje += nr_bloque.to_s  
         mensaje +=  ": md5 bloque anterior:"  + md5_anterior + "\n"
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
         nr_bloque = ARGV[0] 
	 sha256 = Digest::SHA256.file "bloque/#{nr_bloque}" 
         hex_sha256 = sha256.hexdigest
	 puts hex_sha256.to_s
   end
   
