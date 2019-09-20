Gotta `fetch`'em All!
===================

![pokeballs](https://media.giphy.com/media/W04QVzelTHsNW/giphy.gif)

## Objectives

- [ ] Understand why we request data asynchronously
- [ ] Create `fetch` requests (including `GET`, `POST`, `PATCH`, `PUT`, `DELETE`)
- [ ] Manipulate the DOM in conjunction with `fetch` calls
- [ ] Understand optimistic vs pessimistic rendering

### Deliverables (User Stories)

Expand the functionality of the JS Pokemon Search Assignment!

- [ ] As a user, I should see all the Pokemon
- [ ] As a user, I should be able to delete a Pokemon on click of a button
- [ ] As a user, I should be able to create my own Pokemon
- [ ] As a user, I should be able to edit a clicked Pokemon

These changes should _persist_ in our database.

### Mocking your own API

- Our "server" is being faked with a package called [json-server][json-server]. This package uses a local file, `db.json` to spin up a RESTful JSON API in about 30 seconds. To run your server:
  - `$ npm install -g json-server` this will install the node package (similar to a gem) globally `-g` on your machine
  - `$ json-server --watch db.json` this spins up the server, it will default to `localhost:3000`

### JSON Server Routes

Minimal explanation of our API:

```
GET    /pokemon      #index
GET    /pokemon/1    #show
POST   /pokemon      #create
PUT    /pokemon/1    #update
PATCH  /pokemon/1    #update
DELETE /pokemon/1    #delete
```

### Sample Markdown

- We've also included a sample of the HTML that you can use to style your pokemon cards:

```html
<div class="pokemon-card">
  <div class="pokemon-frame">
    <h1 class="center-text">charizard</h1>
    <div class="pokemon-image">
      <img data-id="7" data-action="flip" class="toggle-sprite" src="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png">
    </div>
  </div>
</div>
```

---

## Lecture Notes


### From CRUD to FETCH

Persisting data/change? Well _crud_... how do we do that? 🤔

| CRUD              | FETCH         |
| ----------------- | ------------- |
| Create            | POST          |
| Read              | GET           |
| Update            | PATCH or PUT  |
| Delete / Destroy  | DELETE        |

[Using `fetch` Documentation][using-fetch-mdn]

`PUT` vs `PATCH`

The existing HTTP PUT method only allows a complete replacement of a document. This proposal adds a new HTTP method, PATCH, to modify an existing HTTP resource.

### JSON Server Routes

Minimal explanation of our API:

```
GET    /pokemon      #index
GET    /pokemon/1    #show
POST   /pokemon      #create
PUT    /pokemon/1    #update
PATCH  /pokemon/1    #update
DELETE /pokemon/1    #delete
```