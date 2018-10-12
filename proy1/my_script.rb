class Peticion
  # To change this template use File | Settings | File Templates.
  def pedir_codig_producto
    print "Introduce un número entre 0 y 99:"
    n = gets.to_i
    while n < 0 or n > 99
      puts "Error"
      print "Introduce un número entre 0 y 99:"
      n = gets.to_i
    end
    return n
  end
end


