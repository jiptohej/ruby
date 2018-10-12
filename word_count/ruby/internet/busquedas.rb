require "open-uri"
#puts open("http://en.wikipedia.org/wiki/Ada_Lovelace").read
#puts open("http://www.nytimes.com").read
datos_ada = open("http://en.wikipedia.org/wiki/Ada_Lovelace").read
datos_times = open("http://www.nytimes.com").read
mi_fich = open("ada.html", "w")
mi_fich.write(datos_ada)
mi_fich.close
mi_fich = open("times.html", "w")
mi_fich.write(datos_times)
mi_fich.close

