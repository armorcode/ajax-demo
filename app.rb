require 'sinatra'
require 'json'

get '/' do
  erb :index
end

get '/coucou' do
  "dans coucou en get. params: #{params[:truc]}"
end

post '/truc' do
  puts "dans post truc. params: #{params[:maclef]}"
  #redirect to('/')
  {result: "dans post truc. params: #{params['maclef']}"}.to_json
end

get '/bidule' do
  "dans get bidule viq formulaire. params: #{params[:maclef]}"
end
