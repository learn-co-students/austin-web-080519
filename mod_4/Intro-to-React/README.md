
# Intro To React

## Outline
      Brief Intro on React
      Minimal Code Demonstration
      Virtual DOM
      JSX
      Create-react-app
      Props


### From Mod 3: Vanilla JS

How many JS files did you have to create for your projects? Or what did your JS file look like?

* Updating the DOM to reflect changes in your data
  * difficult to keep the DOM in sync correctly
* Managing State
  * state lives in different places
  * keep track of changes to state
* How to organize code

So, why React? What is it designed to solve?


### Brief Intro on React
* React is a front-end framework made by Facebook.
  * _Front-end framework? JS libraries which gives you tools that can handle the DOM manipulation for our view. But actually more than that, which is why `jQuery` is not considered a front-end framework._

* Two libraries to divide up the core functionality:
  1. `react` - for just the components
  2. `react-dom` - for interaction with the WEB page(rendering on the DOM). There are other libraries such as:  
      * `react-native` for mobile application;
      * `react-vr` for virtual reality application


### Code Demonstration: Low level React

_Before we start, a little FYI:_ 
* _Not using webpack or anything special._
* _Just including react and react-dom in our index.html._
* _Not going to write `import React from 'react'`_
* _Not going to run `npm start`_

_Simply just linking to js/css files in our index.html._

Next, add these specific links to your `index.html`:

```html
<script src="node_modules/react/umd/react.development.js"></script>
<script src="node_modules/react-dom/umd/react-dom.development.js"></script>
<script src="https://unpkg.com/react-dom-factories@1.0.0/index.js"></script>
```

In our `index.js`, `ReactDOM.render()` takes two args:

```js
ReactDOM.render(whatToAddToDOM, whereToPutIt);
```

whereToPutIt: second arg is the **only place we will be using code from mod 3 such as `document.getElementById('main')`**. 

whatToAddToDOM: we need to add a React Element! :

```js
ReactDOM.render(React.createElement('h1'), document.getElementById('main'));
```

Inspect the HTML, an `h1` will be there, but we won't see any text. Change it to:

```js
ReactDOM.render(
  React.createElement('h1', {}, 'Snapdragon'),
  document.getElementById('main')
);
```
And we'll see it on the page!


### Briefly on Virtual DOM

What does `React.createElement` return? 
* an object! 
* That's exaclty what the Virtual DOM is, 
* A plain JS object that builds up a picture of what the real DOM should look like. 
  * Reminder: 
    * `html` is just a string
    * the DOM is a _representation_ of that string we can interact with programmatically, ask questions to, etc. 
    * the Virtual DOM is a representation of that representation. React will be in charge of making sure what the real DOM looks like and will always be in sync with the virtual DOM.


### A little on JSX
If this was how we had to write React it would not be the popular framework it is.  

### Briefly on Babel 
* Babel: A _transpiler_ that converts from one type of source code version to another. Wait..what?
  * If you are using the latest JavaScript features, older browsers might not know what to do when they encounter a new function/property.
  * If you are writing JSX, well…no browser will know what to do with that! Currently for React, it is used to convert `JSX` to JavaScript. (No need to write code like the `ReactDOMFactories`)
   

Add the below script tag code in your `index.html` file
```html
  <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
```

### Installing and using the Modules 

First, `npm install --save react react-dom semantic-ui-css`. 

What do you see after the installation from above?
* `node_modules` folder
* `package-lock.json` file
* What does the `--save` do?


### Briefly on Webpack
* Webpack: A _module bundler_ for modern JS applications. 
* It's a _build tool_ that:
  * Combines different javascript files into a `bundle.js` file. Why do we need to do so? So that we can simply send one js file to our client for the response. 
    * We’ll be relying on webpack to bundle up the relevant parts of the React library, our JSX files, and any additional JavaScript into a single file.
    * Can bundle up other _assets_ like css (LESS/SASS), images, etc.

  * Contains a _plugin system_ to run tools like `babel`. Rather than running the `babel` on our client side in the browser which can slow things down, we could take advantage of webpack. Webpack will run `babel` for us even before we deliver the javascript to the client. 


### create-react-app
Setup:
* `npm install -g create-react-app`
* `create-react-app my-app`
* cd into `my-app`
* Uses webpack and have all the node modules under the hood. (Comes with a pre-configured webpack) 
* Start pulling things into different files. There is no way around `import React from 'react'` in each file, that's normal get used to it, learn to like it. 


### More on JSX
We would need to import React even if we don't see the variable used. Because JSX is just sugar for React.createElement!! It's all just JavaScript!!

* Need to close element tags. (i.e. `img` tag.)
* {} - Means "evaluate this as JavaScript"
  * inline style attributes
  * JavaScript code
* `className` attribute - babel doesn't know the difference between `JS class` and `html class attribute`

### React Rules
1. A _Component_ must `render` (Must return)!
2. A _Component_ must render(return) only one immediate child component.
3. There is one way to pass data from one component to another in React, that is props. Top down flow:  Only the _Parent Component_ can give orders(passing props) to the _Child Component(s)_.  

### props
Props are like arguments to a function. A component does not own it’s own props they are passed to it from outside.

_Caution! Props are supposed to be *immutable*! Never ever try to reassign it!_