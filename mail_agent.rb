require 'mail'

Mail.defaults do
  retriever_method :imap, :address    => "imap.yandex.ru",
                          :port       => 993,
                          :user_name  => 'kurilaa@logicon-group.ru',
                          :password   => 'password',
                          :enable_ssl => true
end

email = Mail.last
sender = email.from
subject = email.subject
body = email.body.decoded
plain_part = email.text_part ? email.text_part.body.decoded : nil
puts "SENDER: #{sender}\nSUBJECT: #{subject}"
puts "MESSAGE:\n#{plain_part}"