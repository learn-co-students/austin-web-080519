Seven REST Routes:
1. Index - Root main page GET FB wall 'facebook.com/posts'
2. Create	- Create new post on FB wall POST 'facebook.com/posts/create'
3. New - Renders blank form GET
4. Edit	- Renders prepopulated form GET
5. Show	- Renders 1 post GET
6. Update - Update the record in the DB PATCH/PUT
7. Destroy - Deleting post DELETE

In routes.rb 
`resources :posts` 
`resources :comments`
- Creates 7 RESTful routes for posts
- Creates 7 RESTful routes for comments



GET vs POST vs PATCH/PUT vs DELETE
GET: `facebook.com/`
  1. Browser/client makes GET request to server
  2. Search for matching route in `routes.rb`
    - Matches HTTP verb (GET)
    - Matches path/url `get facebook.com/` or `root "/"`
    - If resources is defined so Ruby automatically knows to go to PostController method index.
    - If no resources, `get "/" => posts#testing`
  3. In proper controller method
  4. Find erb return erb as response to client (rendering view)
  * Can make a GET request and send information. Are not private. Form information is seen in the URL.

PATCH:
  - Changing some of a record's information

PUT:
  - Replaces a record's information