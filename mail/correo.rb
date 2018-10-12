require 'rubygems'
require 'action_mailer'

class SimpleMailer < ActionMailer::Base
  def simple_message(recipient)
    from 'joseluistorrehernandez@gmail.com'
     recipientes recipient
     subject 'motivo del correo'
     body 'Mensaje enviado a un posible receptor'
  end
end


putsSimpleMailer.create_simple_memssage('joseluistorrehernandez@gmail.com')


