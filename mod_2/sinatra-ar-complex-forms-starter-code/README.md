## Sinatra

### Deliverables

As a site visitor, I should be able to see a list of authors
1. Does schema have to change?
2. What routes do I need?
get '/authors'
DONESIES

As a site visitor, I should be able to see a list of books. I should be able to click on each book title to see more information about that book.
1. Does schema have to change? NO
2. What routes do I need?'
get '/books'
LINK the books to
get '/books/:info'
DONESIES

As a site visitor, I should be able to see a form where I create a book. When I create a book I can associate it with an existing author.

Make a link to create book form GOOD
create the route GET '/books/new' GOOD
create erb GOOD
Create a POST form - make a book DONE
    - title
    - snippet
    - authorid? - need a way to attach to Author DONE (via authorid)
new route : POST '/books/new DONE
redirect to specific book page
DONESIES