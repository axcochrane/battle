require 'sinatra/base'
class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:players)
  end

  post '/names' do
    "player1 = " << session[:player1].inspect
#   @player1 = params[:player1]
    session['player1'] = params[':player1']
    @player2 = params[:player2]
    p params
    erb(:play)
  end

  get '/names' do
    p params 
    erb(:play)
  end

run! if app_file == $0
end
