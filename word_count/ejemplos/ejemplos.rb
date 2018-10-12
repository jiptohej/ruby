def digitos(n)
	if n < 10
		return 1
	else
		return 1+digitos(n/10)
	end
end

def digitos(n)
	i = 1
	while n > 10 
		i= i + 1
		n = n/10
	end
	return i
end


def suma_digitos(n)
	s = 0
	if n < 10
		return n
	else
		return n + suma_digitos(n / 10)
	end
end

def suma_digitos(n)
	s = 0
	while n > 0
		s = s + n % 10
		n = n / 10
	end
	return s
end

def mean(array)
	array.inject(0) { |sum, x| sum += x } / array.size.to_f
end

def media(x)
    sx = 0.0
    n  = 0
    for xi in x
		sx = sx + xi
        n = n + 1
	end
	return sx/n
end

def aledado(n)
    x = []
    for i in (1..n)
		x << 1 + rand(6)
	end
	return x
end

def random_word
    letters = { ?v => 'aeiou', ?c => 'bcdfghjklmnpqrstvwxyz' }
    word = ''
    'cvcvcv'.each_byte do |x|
      source = letters[x]
      word << source[rand(source.length)].chr
    end
    return word
end

# puts "lanzamos dado"
# puts aledado 10
# puts "palabra al azar"
# puts random_word

vector=[1,2, 3,4,5,6]

def stat(v)
	min=v[0]
	max=v[0]
	for i in (0..v.length-1)
		if v[i] < min
			min = v[i]
		elsif v[i]>max
			max=v[i]
		end
	end
	return [min, max]
end

puts stat(vector)





def minimo(v)
	min=v[0]
	for i in (0..v.length-1)
		if v[i] < min
			min = v[i]
		end
	end
	return min
end

puts minimo(vector)

def foo(x)
	return [x, x, x, x, x]
end

alfa=1

puts foo(alfa)

puts "mostrar el array generado"
puts (foo(9))


def fact(n)
	if n==0
		return 1
	else
		return n*fact(n-1)
	end
	
end

puts fact(15)
