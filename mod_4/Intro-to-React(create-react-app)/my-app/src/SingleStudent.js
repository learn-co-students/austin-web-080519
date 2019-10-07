import React from 'react'

class SingleStudent extends React.Component {

  render() {
    console.log(this.props)
    const { singleDragon, text } = this.props
    
    return(
      <li>
        <h1>{singleDragon}</h1>
        <p>{text}</p>
      </li>
      // <li key={index}>
      //         <h2>{student}</h2>
      //         <p>Belongs to 080519 Cohort</p>
      // </li>
    )
  }
} 

export default SingleStudent;