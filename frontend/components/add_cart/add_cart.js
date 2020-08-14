import React from 'react';

class AddCart extends React.Component {

  constructor(props) {
    super(props);
    this.addToCart = this.addToCart.bind(this);
    this.checkCart = this.checkCart.bind(this);
  }

  componentDidMount() {
    this.props.getAllCartItems();
  }

  checkCart (currentItem) {
    if (this.props.userCartItems.length === 0) {
      this.props.createCartItem({
        customer_id: this.props.currentUser.id,
        game_id: currentItem.id
      });
    } else {
      let cartItems = this.props.userCartItems;
      let gameIdMap = cartItems.map(cartItem =>
        cartItem.game_id
      )
      if (!gameIdMap.includes(currentItem.id)) {
        this.props.createCartItem({
          customer_id: this.props.currentUser.id,
          game_id: currentItem.id
        });
      }
    }
  }

  addToCart (e) {
    e.preventDefault();
    if (this.props.currentUser.id === null) {
      openModal("login");
    } else {
      this.checkCart(this.props.game)
    }
  }

  render() {
    return (
      <button className="add-to-cart" onClick={(e) => this.addToCart(e)} >
        Add to Cart
      </button>
    )
  }

};

export default AddCart;