import React from 'react';
import { Link } from 'react-router-dom';

class CartItems extends React.Component {
  constructor(props) {
    super(props)

    this.emptyCart = this.emptyCart.bind(this);
    this.filledCart = this.filledCart.bind(this);
    this.toTop = this.toTop.bind(this);
    this.purchase = this.purchase.bind(this);
  }

  purchase() {
    let cartItemsObj = Object.entries(this.props.userCartItems);
    let { games } = this.props;
    cartItemsObj.forEach(cartItem => {
      let game = games[cartItem[1].game_id]
      this.props.createOrderItem({
        orderer_id: cartItem[1].customer_id,
        order_item_id: game.id
      })
      this.props.deleteCartItem(cartItem[1].id)
    })
  }

  toTop() {
    $('html,body').scrollTop(0);
  }

  componentDidMount() {
    this.props.getAllCartItems();
  }

  deleteItem(cartItem) {
      this.props.deleteCartItem(cartItem.id)
  }

  emptyCart() {
    return (
      <div>
        <div onClick={this.props.closeModal} className="cart-close">
          <svg xmlns="http://www.w3.org/2000/svg"
            width="16px" height="16px"
            viewBox="0 0 512 512">
            <path id="Imported Path"
              fill="gray"
              d="M 256.00,33.00
                          C 132.30,33.00 32.00,133.30 32.00,257.00
                            32.00,380.70 132.30,481.00 256.00,481.00
                            379.70,481.00 480.00,380.70 480.00,257.00
                            480.00,133.30 379.70,33.00 256.00,33.00 Z
                          M 364.30,332.50
                          C 365.80,334.00 366.60,336.00 366.60,338.10
                            366.60,340.20 365.80,342.30 364.30,343.70
                            364.30,343.70 342.70,365.40 342.70,365.40
                            341.10,367.00 339.10,367.70 337.10,367.70
                            335.10,367.70 333.00,366.90 331.50,365.40
                            331.50,365.40 256.00,289.80 256.00,289.80
                            256.00,289.80 180.60,365.50 180.60,365.50
                            179.10,367.10 177.00,367.80 175.00,367.80
                            173.00,367.80 170.90,367.00 169.40,365.50
                            169.40,365.50 147.80,343.80 147.80,343.80
                            146.30,342.30 145.50,340.30 145.50,338.20
                            145.50,336.10 146.30,334.00 147.80,332.60
                            147.80,332.60 223.50,256.60 223.50,256.60
                            223.50,256.60 147.60,181.60 147.60,181.60
                            144.50,178.50 144.50,173.40 147.60,170.30
                            147.60,170.30 169.20,148.60 169.20,148.60
                            170.70,147.10 172.70,146.30 174.80,146.30
                            176.90,146.30 178.90,147.10 180.40,148.60
                            180.40,148.60 256.10,223.30 256.10,223.30
                            256.10,223.30 331.80,148.60 331.80,148.60
                            333.30,147.10 335.30,146.30 337.40,146.30
                            339.50,146.30 341.50,147.10 343.00,148.60
                            343.00,148.60 364.60,170.30 364.60,170.30
                            367.70,173.40 367.70,178.50 364.60,181.60
                            364.60,181.60 288.70,256.60 288.70,256.60
                            288.70,256.60 364.30,332.50 364.30,332.50 Z" />
          </svg>
        </div>
        <h1 className="cart-header">Shopping Cart</h1>
        <div className="buy-page">
          <div className="empty-cart-div">
            <div className="empty-header">Your cart is empty</div>
            <div className="cart-header">Checkout</div>
            <div className="purchase-container">
              <a className="purchase-button" onClick={() => openModal('purchase')}>Purchase</a>
            </div>
          </div>
        </div>
      </div>
    )
  }

  filledCart(cartItemsObj) {
    let allTotal = 0;
    let allSaleTotal = 0;
    return (
      <div>
        <div onClick={this.props.closeModal} className="cart-close">
          <svg xmlns="http://www.w3.org/2000/svg"
            width="16px" height="16px"
            viewBox="0 0 512 512">
            <path id="Imported Path"
              fill="gray"
              d="M 256.00,33.00
                          C 132.30,33.00 32.00,133.30 32.00,257.00
                            32.00,380.70 132.30,481.00 256.00,481.00
                            379.70,481.00 480.00,380.70 480.00,257.00
                            480.00,133.30 379.70,33.00 256.00,33.00 Z
                          M 364.30,332.50
                          C 365.80,334.00 366.60,336.00 366.60,338.10
                            366.60,340.20 365.80,342.30 364.30,343.70
                            364.30,343.70 342.70,365.40 342.70,365.40
                            341.10,367.00 339.10,367.70 337.10,367.70
                            335.10,367.70 333.00,366.90 331.50,365.40
                            331.50,365.40 256.00,289.80 256.00,289.80
                            256.00,289.80 180.60,365.50 180.60,365.50
                            179.10,367.10 177.00,367.80 175.00,367.80
                            173.00,367.80 170.90,367.00 169.40,365.50
                            169.40,365.50 147.80,343.80 147.80,343.80
                            146.30,342.30 145.50,340.30 145.50,338.20
                            145.50,336.10 146.30,334.00 147.80,332.60
                            147.80,332.60 223.50,256.60 223.50,256.60
                            223.50,256.60 147.60,181.60 147.60,181.60
                            144.50,178.50 144.50,173.40 147.60,170.30
                            147.60,170.30 169.20,148.60 169.20,148.60
                            170.70,147.10 172.70,146.30 174.80,146.30
                            176.90,146.30 178.90,147.10 180.40,148.60
                            180.40,148.60 256.10,223.30 256.10,223.30
                            256.10,223.30 331.80,148.60 331.80,148.60
                            333.30,147.10 335.30,146.30 337.40,146.30
                            339.50,146.30 341.50,147.10 343.00,148.60
                            343.00,148.60 364.60,170.30 364.60,170.30
                            367.70,173.40 367.70,178.50 364.60,181.60
                            364.60,181.60 288.70,256.60 288.70,256.60
                            288.70,256.60 364.30,332.50 364.30,332.50 Z" />
          </svg>
        </div>
        <h1 className="cart-header">Shopping Cart</h1>

        <div className="buy-page">
          <div className="new-cart-div">
            {cartItemsObj.map(cartItem => {
              let game = this.props.games[cartItem[1].game_id]
              allTotal += (game.price);
              allSaleTotal += (game.price * (1 - game.sale / 100));
              return (
                <div
                  key={game.id}
                  className="cart-item-div"
                >
                  <div className="cart-item-left">
                    <button
                      className="delete-item-in-cart"
                      onClick={() =>
                        this.deleteItem(cartItem[1])
                      }
                    >
                      <svg xmlns="http://www.w3.org/2000/svg"
                        width="16px" height="16px"
                        viewBox="0 0 512 512">
                        <path id="Imported Path"
                          fill="gray"
                          d="M 256.00,33.00
                            C 132.30,33.00 32.00,133.30 32.00,257.00
                              32.00,380.70 132.30,481.00 256.00,481.00
                              379.70,481.00 480.00,380.70 480.00,257.00
                              480.00,133.30 379.70,33.00 256.00,33.00 Z
                            M 364.30,332.50
                            C 365.80,334.00 366.60,336.00 366.60,338.10
                              366.60,340.20 365.80,342.30 364.30,343.70
                              364.30,343.70 342.70,365.40 342.70,365.40
                              341.10,367.00 339.10,367.70 337.10,367.70
                              335.10,367.70 333.00,366.90 331.50,365.40
                              331.50,365.40 256.00,289.80 256.00,289.80
                              256.00,289.80 180.60,365.50 180.60,365.50
                              179.10,367.10 177.00,367.80 175.00,367.80
                              173.00,367.80 170.90,367.00 169.40,365.50
                              169.40,365.50 147.80,343.80 147.80,343.80
                              146.30,342.30 145.50,340.30 145.50,338.20
                              145.50,336.10 146.30,334.00 147.80,332.60
                              147.80,332.60 223.50,256.60 223.50,256.60
                              223.50,256.60 147.60,181.60 147.60,181.60
                              144.50,178.50 144.50,173.40 147.60,170.30
                              147.60,170.30 169.20,148.60 169.20,148.60
                              170.70,147.10 172.70,146.30 174.80,146.30
                              176.90,146.30 178.90,147.10 180.40,148.60
                              180.40,148.60 256.10,223.30 256.10,223.30
                              256.10,223.30 331.80,148.60 331.80,148.60
                              333.30,147.10 335.30,146.30 337.40,146.30
                              339.50,146.30 341.50,147.10 343.00,148.60
                              343.00,148.60 364.60,170.30 364.60,170.30
                              367.70,173.40 367.70,178.50 364.60,181.60
                              364.60,181.60 288.70,256.60 288.70,256.60
                              288.70,256.60 364.30,332.50 364.30,332.50 Z" />
                        </svg>
                      </button>
                    <Link
                      onClick={() => this.toTop()}
                      className="public-game-links"
                      to={`/games/${game.id}`}
                    >
                      {game.title}
                    </Link>
                  </div>
                  <div className="cart-item-right">
                    <div className="msrp-game">
                      ${(game.price).toFixed(2)}
                    </div>
                    <div className="sale-game">
                      ${(game.price * (1 - game.sale / 100)).toFixed(2)}
                    </div>
                  </div>
                </div>
              );
            }
            )}
          </div>
        </div>
        <div className="total-container">
          <label className="total-label">Total:</label>
          <div className="total-amounts">
            <div className="msrp-total">${allTotal.toFixed(2)}</div>
            <div className="sale-total">${allSaleTotal.toFixed(2)}</div>
          </div>
        </div>
        <div className="cart-header">Checkout</div>
        <div className="purchase-container">
          <button onClick={() => this.purchase()} className="purchase-button">Purchase</button>
        </div>
      </div>
    )

  }

  render() {
    let cartItemsObj = Object.entries(this.props.userCartItems);
    return (
      cartItemsObj.length === 0 ? this.emptyCart() : this.filledCart(cartItemsObj)
    )
  }
}

export default CartItems