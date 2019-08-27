class ApplicationController < Sinatra::Base
  get '/' do

    erb :index
  end

  get '/users' do
    "Hello, World!"
  end
end


# Steps 
# 1: Type link in browser
# 2: Server recieved a get request to '/'
# 3/4: Controller returned index.erb
# 5: Response to client with page