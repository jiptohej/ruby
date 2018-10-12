#! /usr/bin/env  ruby
#  encoding: utf-8

class Cuenta
      attr_accessor :nombre, :codigo, :debe, :haber

      def initialize(codigo, nombre, debe=0, haber=0)
          @codigo = codigo
          @nombre = nombre
          @debe = debe
          @haber = haber
      end
         
end

class Asiento


end

class Apunte

end


c1 = Cuenta.new('100', 'Capital Social', 0, 100_000)

p c1.nombre
p c1.codigo
p c1.debe
p c1.haber  

p c1
