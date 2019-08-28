class AuthorsController < ApplicationController
    get '/authors' do
        @authors = Author.all
        erb :'authors.html'
    end
end
