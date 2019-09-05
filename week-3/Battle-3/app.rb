require 'sinatra'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Testing infrastructure working?'
  end

  get '/sign_in' do
    erb :index
  end

  post '/names' do
    session[:name_Player1] = params[:name_player1]
    session[:name_Player2] = params[:name_player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:name_Player1]
    @player2 = session[:name_Player2]
    erb :play
  end

  get '/game' do
    'player_2_hit_points'
  end

  run! if app_file == $0
end
