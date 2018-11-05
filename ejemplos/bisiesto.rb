def mult4(x)
    x % 4 == 0
end

def mult100(x)
    x % 100 == 0
end

def multn(x, n)
    x % n == 0
end

def mult4(x)
    multn(x, 4)
end

def mult100(x)
    multn(x, 100)
end

def mult400(x)
    multn(x, 400)
end

def bisiesto(x)
    mult4(x) && !mult100(x) || mult400(x)
end

def bis(x)
    return true if mult4(x) and ! mult100(x)
    return true if mult400(x)
    return false
end

def biss(x)
    x % 4 == 0 && x % 100 != 0 || x % 400 == 0
end


# comprueba que ambas funciones porporcionan el mismo valor
#(2000..2401).each {|x| if bisiesto(x) != bis(x) then print "#{x} #{bisiesto(x)} #{bis(x)} \n" end }
(2000..2401).each {|x| if bisiesto(x) != biss(x) then print "#{x} #{bisiesto(x)} #{bis(x)} \n" end }
