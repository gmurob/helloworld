require 'net/imap'

USERNAME='robert.hartman@gmail.com'
PASSWORD='latino123A'
MAIL_SERVER='imap.gmail.com'
MAILBOX='INBOX'
srvoptions = {'port' => '993', 'ssli' => 'TRUE'}
imap = Net::IMAP.new(MAIL_SERVER, srvoptions)
imap.authenticate('LOGIN', USERNAME, PASSWORD)

imap.select(SOURCE_MAILBOX)

count = 0

imap.search(["SINCE", "30-Jun-2014"]).each do |message_id|
    count = count + 1
    env = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
    puts "#{env.from[0].name}: \t#{env.subject}"
end
imap.logout
imap.disconnect
