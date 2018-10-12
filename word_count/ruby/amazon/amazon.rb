#! /usr/bin/env ruby
# encoding: utf-8

require 'amazon/search'

$AWS_KEY = 'Your AWS key goes here'

def price_books(keyword)
  req = Amazon::Search::Request.new($AWS_KEY)
  req.keyword_search(keyword, 'books', Amazon::Search::LIGHT) do |producto|
    newp = producto.our_price || 'no disponible'
    usedp = producto.used_price || 'no disponible'
    puts "#{producto.product_name}: #{newp} nuevo, #{usedp} usado"
  end
end

price_books('ruby cookbook') 
