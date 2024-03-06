require 'net/http'


pages = %w( www.rubycentral.com
            www.awl.com
            https://pragprog.com/
           )


threads = []


for page in pages
  threads << Thread.new(page) { |myPage|


    h = Net::HTTP.new(myPage, 443)
    puts "Fetching: #{myPage}"
    resp, data = h.get('/', nil )
    puts "Got #{myPage}:  #{resp.message}"
  }
end


threads.each { |aThread|  aThread.join }

