
class BooksController < ApplicationController
    get '/books' do
        @books = Book.all
        erb :'books.html'
    end

    get '/books/:id' do 
        # binding.pry
        @book = Book.find(params[:id])
        erb :'booksinfo.html'
    end
end
