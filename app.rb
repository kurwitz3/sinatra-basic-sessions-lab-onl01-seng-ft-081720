require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
      end
      get '/' do 
        erb :index
      end 
      post '/checkout' do 
        @purchase = params[:item]
        @session = session 
        @session.merge! params
        erb :show
      end
end