enteros=[]
cuantos=[]

def pedir_vector(enteros)
    i=0
	print "Introduce el valor correspondiente al elemento #{i}: "
	num = gets.to_i
	while num >= 0
	   enteros[i]=num
	   i += 1
	   print "Introduce el valor correspondiente al elemento #{i}: "
	   num = gets.to_i
	end
	return i
end

def num_cifras(n)
    cifras = 1
    coc = n/10
    while coc != 0
       coc = coc / 10
       cifras += 1
    end
    return cifras
end

def iniciar_contadores(cuantos)
    for i in 0..9
      cuantos[i]=0
    end
end

def iniciar_array(array)
    imax=100
    for i in 0...imax
      array[i] = 2*i
    end
    return imax
end

def obtener_vector_cifras(enteros, cuantos, num_elem)
    total_cifras = 0
    for i in 1...num_elem
       cifras = num_cifras(enteros[i])
       cuantos[cifras]+=1
       total_cifras += cifras
    end
    cuantos[0]=total_cifras
end

num_elem = iniciar_array(enteros)
iniciar_contadores(cuantos)
p enteros
p cuantos
print "el número de elementos es ", num_elem, "\n"

obtener_vector_cifras(enteros, cuantos, num_elem)
p cuantos






