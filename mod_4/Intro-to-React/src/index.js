const imageURL = 'https://cdn.shopify.com/s/files/1/0010/9782/6419/products/Antirrhinum_Majus_Seeds_Common_Snapdragon_Flower_Seeds_Dragon_s_Month_Jinyu_Cao_3_1024x1024.jpg?v=1529132691'

class Flower extends React.Component {

  render() {
    const h2 = ReactDOMFactories.h2(null, "Snapdragons");
    const img = ReactDOMFactories.img({
      src: imageURL,
      alt: "actual snapdragon"
    });

    return ReactDOMFactories.div(null, h2, img);  
  
    // return (
    //   <div>hello babel world</div>
    // )
  }

}

ReactDOM.render(
  React.createElement(Flower),
  document.getElementById('main')
);