require 'sinatra'

get '/' do
  erb :index
end

get('/:name') do
  @name = params[:name].capitalize

  erb :hello
end

post('/signup') do

  puts params[:name]
  puts params[:email]
  puts params.inspect
  "All OK"
  require 'pony'
  Pony.options = {
    :via => 'smtp',
   :via_options => {
   :address => 'smtp.mailgun.org',
   :port => '587',
   :enable_starttls_auto => true,
   :authentication => :plain,
   # This is the Default SMTP Login from earlier:
   :user_name => 'postmaster@sandboxd952b89398494d109d6b7164dfd48644.mailgun.org',
  # This is your Default Password:
   :password => '67f677b6a81ba13595322ab5df9d8900-9525e19d-03c41b70'
   }
   }
   message = {
   :from => 'etfeire@gmail.com',
   :to => "#{params[:name]} <#{params[:email]}>",
   :subject => 'Thanks for signing up babe',
   :body => 'Thanks for signing up to our awesome newsletter!'
  }
  Pony.mail(message)
end
