require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      # binding.pry
      @new_pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      params[:pirate][:ships].each do |ship|
        # binding.pry
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      erb :'pirates/show'
    end
  
  end
end
