require 'net/pop'

con = Net::POP3.new('www.google.com')
# con = Net::POP3.new('www.ehu.eus')

con.start('jiptohej', 'jlt-5040-M17')

con.mails.each do |msg|
  File.open(msg.uidl, 'w') { |f| f.write msg.pop}
  # msg.delete
end

con.finish
