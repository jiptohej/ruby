require 'resolv'

direcciones = ["www.ehu.eus", "www.telefonica.es", "oreilly.com"]

direcciones.each do |dirección|
    puts dirección
    Resolv::DNS.new.each_address (dirección) {|addr| puts addr }
end
