# React

## Why are we using React?
- Easier DOM manipulation
- Easier ways to hold and share data

## Components
- Why do we use components?

## Props
- Given to a Component from a parent Component
- Cannot be changed

## State
- The information a Component holds relevant to itself or children
- Normally used if the information is changing or being retrieved from API
- Can be changed
- Changing state rerenders the component

## Questions to Ask
- What information does the Component need?
- Should the Component fetch that information and save it in state or get it passed in as props?
- What does the Component do?
- Will  any information in the Component change?

## Ternary
if (cody.mood == "happy") {
  console.log("I am happy! :) ")
} else {
  console.log( ":(" )
}

cody.mood == "happy" ? console.log("I am happy! :) ") : console.log( ":(" )

cody.mood == "happy" && console.log("I am happy! :) ")

render() {
  return (cody.mood == "happy" ? <HappyComponent props={cody}> : <SadComponent props={cody}>)
}