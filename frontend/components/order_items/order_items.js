import React from 'react'
import { Link } from 'react-router-dom'

class OrderItems extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      render: [false],
      grandTotal: 0
    }

    this.emptyOrders = this.emptyOrders.bind(this);
    this.filledOrders = this.filledOrders.bind(this);
    this.toTop = this.toTop.bind(this);
    this.total = this.total.bind(this);
  }

  total(orderItem) {
    return orderItem.price * orderItem.quantity
  }

  toTop() {
    $('html,body').scrollTop(0);
  }

  componentDidMount() {
    this.props.getAllOrderItems()
  }

  showLess(content) {
    if (content.length > 16) {
      return (
        <h1 className="public-name">{content.slice(0, 16) + "..."}</h1>
      )
    } else {
      return (
        <h1 className="public-name">{content}</h1>
      )
    }
  }

  emptyOrders() {
    return (
      <div>
        <h1 className="header">Purchased Products</h1>
        <div className="buy-page">
          <div className="empty-cart-div">
            <div className="header">You have no orders!</div>
          </div>
        </div>
      </div>
    )
  }

  filledOrders(orderItemsObj) {
    return (
      <div className="order-container">
        <div className="orders">
          <h1 className="products-header">Purchased Products</h1>
          <div className="order-list">
          <div className="order-header">
            <div className="header-product header-title" >PRODUCT</div>
            <div className="header-date header-title" >DATE</div>
            <div className="header-title">TOTAL</div>
          </div>
            <div className="new-cart-div">
              {orderItemsObj.map(orderItem => {
                return (
                  <div
                    key={orderItem.id}
                    className="order-item-div"
                  >
                    <Link
                      onClick={() => this.toTop()}
                      className="order-title header-product"
                      to={`/games/${orderItem.id}`}
                    >
                      {orderItem.title}
                    </Link>
                    <div>
                      <div className="header-date">
                        {orderItem.created_at}
                      </div>
                    </div>
                    <div className="quantity">
                      <div className="quantity-num">
                        ${orderItem.price}
                      </div>
                    </div>
                  </div>
                );
              }
              )}
            </div>
          </div>
        </div>
      </div>
    )

  }

  render() {

    let orderItemsObj = this.props.userOrderItems
    return (orderItemsObj.length === 0 ? this.emptyOrders() : this.filledOrders(orderItemsObj))
  }
}

export default OrderItems