require 'sinatra/base'
class Battle < Sinatra::Base

  get '/' do
    erb(:players)
  end

  post '/players' do
   @player1 = params[:player1]
    p params
    erb(:names)
  end

  get '/names' do
    erb(:names)
  end

run! if app_file == $0
end
