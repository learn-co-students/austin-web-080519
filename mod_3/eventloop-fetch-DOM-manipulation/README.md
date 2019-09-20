## Learning Goal

- Introducing the Event Loop
- A little more in understanding Promise
- A little more on the fetch API

### Event Loop

Capability of performing asynchronous functionalities are given to us through the Web APIs. 
  - DOM
  - AJAX requests
  - setTimeout()
  - etc.

Single Thread(Synchronous) vs Multi Thread(Asynchronous)
  - JavaScript is a single-threaded language. (Single-threaded runtime)
  - The browser has the capability of performing multi-threaded tasks. 
  - Chromse Browser: Has an engine called the V8 JavaScript Engine to do the multi-threaded functionalities (Used in Node too.)

Event Loop
  - What is the Call Stack?
  - What is an Event Queue?
    - Keeps track of all the events pending to be executed in JavaScript.
  - Pulls out functions(callbacks) waiting in the Queue and places them on to the Stack to execute the function. 
  - The very first callback function in the Queue line gets into the Stack only after the Stack becomes empty and no longer has any other functions to execute.
  - The event loop allows JavaScript to use callbacks and promises.
    - It constantly checks if the Call Stack is empty.

Resource: 
  - Good watch on Event Loop: (https://www.youtube.com/watch?v=8aGhZQkoFbQ&t=170s)
  - Event Loop Simulator: (http://latentflip.com/loupe/?code=!!!PGJ1dHRvbj5DbGljayBtZSE8L2J1dHRvbj4%3D)
  

### Fetching ⚾️ <== 🐕

**About**

* `fetch` will always **return** a [_Promise_][mdn-promise] and it is promising to do something **if** it returns. We can think of this as the **promise** of an eventual value
  * There is **NO** guarantee of when it will come back!
  * There is **NO** guarantee that it will succeed!
* We **want** `fetch` to be **asynchronous _BECAUSE_**:
  * **If** `fetch` calls were **synchronous**, we would be stuck waiting for the call to finish before the code could proceed.
  * So **rather than _blocking_** any other JavaScript from running, we want `fetch` calls to be asynchronous. We want to write code around the eventual success or failure of some _asynchronous_ ⏳ operation such as an HTTP request.
