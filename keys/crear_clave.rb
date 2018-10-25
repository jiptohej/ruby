usuario= ARGV[0] 
#generar la clave privada
cmd="openssl genrsa -out private/#{usuario}.key 2048" 
system(cmd)
# generar la clave pública a partir de la clave privada
cmd="openssl rsa -in private/#{usuario}.key -outform PEM -pubout -out public/#{usuario}-public.key" 
system(cmd)
