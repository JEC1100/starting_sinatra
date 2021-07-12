require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    "hello!"
  end
  
  get '/secret' do
    "This is a very very secret message"
  end
  
  get '/name' do
    "James"
  end
  
  get '/cat' do
    @sample_name = ['Amigo', 'Misty', 'Almond'].sample
    erb(:index)
  end