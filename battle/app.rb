require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
