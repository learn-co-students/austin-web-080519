import React from 'react'
import SingleStudent from './SingleStudent'

const students = [
  "Jason",
  "Hemesh",
  "Syd",
  "Mitch",
  "Anais",
  "Cody",
  "AJ",
  "Andy"
]

function SnapDragons () {
  const text = "Hi hello!!"
  const imageURL = 'https://cdn.shopify.com/s/files/1/0010/9782/6419/products/Antirrhinum_Majus_Seeds_Common_Snapdragon_Flower_Seeds_Dragon_s_Month_Jinyu_Cao_3_1024x1024.jpg?v=1529132691'
  const myStyle = {width: "300px", height: "300px"}
  return (
    <div>
      <img  src={imageURL} 
            style={myStyle}       
      />

      <ul>
      {
          students.map((student, index) => {
          return (
            <SingleStudent singleDragon={student} text={text} />
          )
        })
      }
      </ul>
    </div>
  )
}

export { SnapDragons }