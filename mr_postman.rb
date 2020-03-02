require 'mail'
# Mail options
options = { 
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :user_name            => 'username',
  :password             => 'password',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }

Mail.defaults do
delivery_method :smtp, options
end

def send_mail(filepath)
# Mail body
Mail.deliver do
    from    'mrpostman@gmail.com'
    to      'kurilaa@yahoo.com'
    subject 'Test message from Mr.Postman with attachment.'
    body    'Hello there!'
    add_file filepath #'P:\RubyPrograms\Test.txt'
  end
end