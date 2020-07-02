require 'mail'

Mail.defaults do
  retriever_method :imap, :address    => "imap.yandex.ru",
                          :port       => 993,
                          :user_name  => 'kurilaa@logicon-group.ru',
                          :password   => 'rjisebtxolanqubf',
                          :enable_ssl => true
end

email = Mail.last
sender = email.from
subject = email.subject
body = email.body.decoded
plain_part = email.text_part ? email.text_part.body.decoded : nil
html_part = email.html_part ? email.html_part.body.decoded : nil
puts "SENDER: #{sender}\nSUBJECT: #{subject}"
if plain_part.nil?
  puts "HTML MESSAGE: #{html_part.nil?}"
else
  puts "PLAIN MESSAGE: #{plain_part.nil?}"
end