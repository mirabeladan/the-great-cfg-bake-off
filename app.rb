require 'sinatra'

get('/:name') do
  @name = params[:name].capitalize

  erb :hello
end

post('/signup') do

  puts params[:name]
  puts params[:email]
  "All OK"

  end
