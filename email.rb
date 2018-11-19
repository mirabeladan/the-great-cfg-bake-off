require 'pony'
Pony.options = { :via => 'smtp',
 :via_options => {
 :address => 'smtp.mailgun.org',
 :port => '587',
 :enable_starttls_auto => true,
 :authentication => :plain,
 # This is the Default SMTP Login from earlier:
 :user_name => 'postmaster@sandboxd5055ad5f9314b54bcc231e049e4f2e5.mailgun.org',
# This is your Default Password:
 :password => '9345ef7d66f8511110abce45110defa7-1053eade-251cebc7'
 }
 }
 message = {
 :from => 'etfeire@gmail.com',
 :to => 'Recipient Name Goes Here <etfeire@gmail.com>',
 :subject => 'Thanks for signing up babe',
 :body => 'Thanks for signing up to our awesome newsletter!'
}
Pony.mail(message)
