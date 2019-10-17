This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## React Router Mini App

In the project directory, you can run:

### `npm install`

### `npm start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

-----------------------------

## History API
 
Before trying out the react-router library, let's try to understand the History API.
- The history API available to us in the browser allows the current browser session to interact with the address bar and the navigation history. Meaning, you can:
  - Change the url address bar.
  - Change browser's local navigation history.
- We can minpulate the browser history with JavaScript! Simply open up a browser and try these out in your chrome dev tools console.
  - `history.back()`
  - `history.forward()`
  - `history.pushState({}, 'random', '/someroute')`
  _Don't worry about the first and second arguments. Just understand for now that the third argument adds an additional url to the current url in your history object!_
  - `window.location`
  _Try this too before and after manipulating the history object_.

- Good source: [MDN Doc](https://developer.mozilla.org/en-US/docs/Web/API/History_API)


Why are these good to know? It's thanks to this History API that we can create a nice SPA. We can browse with the back button which looks to your previous page by searching the previous internal links in your history object.

And as you have guessed, React-Router does this for us!

## React-Router
Ability to navigate between different components, change urls, and modifying the browser history!