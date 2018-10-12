Shoes.app do
#  para(link("CocaCola.es"){alert "No alcanzada!" })
#  link("CocaCola.es", :click => "http://www.cocacola.es")

  style :Link, :underline => false, :stroke => green
  para(link("CocaCola.es", :click => "http://cocacola.es"){alert "No alcanzada!" })
 
end

