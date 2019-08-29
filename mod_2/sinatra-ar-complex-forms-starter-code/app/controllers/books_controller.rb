
class BooksController < ApplicationController
    get '/books' do
        @books = Book.all
        erb :'books.html'
    end

    get '/books/new' do
        # binding.pry
        @authors = Author.all

        erb :'newbook.html'
    end

    post '/books/new' do
        #Make a var - new book.create#params values
        #associate with an author #send it to an erb
        
        @book = Book.create(title: params[:title],
                        author_id: params[:author_id],snippet: params[:snippet])
        erb :'booksinfo.html'
    end

    get '/books/:id' do 
        # binding.pry
        @book = Book.find(params[:id])
        erb :'booksinfo.html'
    end
end
