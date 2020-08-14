import { connect } from 'react-redux';
import { getAllCartItems, createCartItem, deleteCartItem, updateCartItem } from '../../actions/cart_item_action';
import CartItems from './cart_items';
import { createOrderItem } from '../../actions/order_items_actions';

const mSTP = state => {
  return ({
    userCartItems: Object.values(state.entities.cartItems),
    currentUserId: state.session.id,
    games: state.entities.games
  })
}

const mDTP = dispatch => ({
  getAllCartItems: () => dispatch(getAllCartItems()),
  createCartItem: cartItem => dispatch(createCartItem(cartItem)),
  deleteCartItem: cartItemId => dispatch(deleteCartItem(cartItemId)),
  createOrderItem: (orderItem) => dispatch(createOrderItem(orderItem)),
  updateCartItem: (data, id) => dispatch(updateCartItem(data, id)),
})

export default connect(mSTP, mDTP)(CartItems)