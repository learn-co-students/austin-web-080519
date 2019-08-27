require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    # Matches form <form method="POST" action="/pirates">
    post '/pirates' do
      # params is the information sent from the form
      # <input name='pirate[name]' type='text'>
      # params[:pirate][:name] is whatever the user types in the input
      @new_pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      # Can use variables in show.erb <p><%=@new_pirate.name %></p>
      erb :'pirates/show'
    end
  
  end
end
