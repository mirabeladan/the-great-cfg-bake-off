require 'sinatra'

get('/:name') do
  @name = params[:name].capitalize

  erb hello
end
