#connect to gmail with credentials
#filter a search
#iterate through messages
#make regex to chop messages
#store to disk.
#cleanup?

#require 'imap'
require 'mime'
require 'gmail'
require 'highline/import'

username = "robert.hartman@gmail.com"
#password = ask("Enter your password:  ") { |q| q.echo = "*" }
#username = ask("Enter your username:  ") { |q| q.echo = true }
password = ask("Enter your password:  ") { |q| q.echo = "*" }


#imap = Net::IMAP.new('imap.gmail.com', '993', true)
#imap.authenticate('LOGIN', username, password)
#imap.examine('INBOX')
#
#
#imap.search(["RECENT"]).each do |message_id|
#	  envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
#	    puts "#{envelope.from[0].name}: \t#{envelope.subject}"
#end
#
#
#imap.logout
#imap.disconnect


gmail = Gmail.new(username, password) do |gmail|
  gmail.logged_in?
p gmail.inbox.count
p gmail.inbox.count(:unread)
p gmail.inbox.count(:read)
end

#messages =  gmail.inbox.emails(:after => Date.parse("2014-06-25"), :subject => "Guru Punch!")
#messages =  gmail.inbox.emails(:subject => "selfie")
#p Number of message
#p messages.count
#p message is:
#p messages.class
#p The first message is:
#p messages[0]
#gmail.logout
