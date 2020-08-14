import { connect } from 'react-redux';
import { openModal } from '../../actions/modal_actions';
import AddCart from '../add_cart/add_cart'
import { getAllCartItems, createCartItem, deleteCartItem, updateCartItem } from '../../actions/cart_item_action';

const mSTP = ({ session, entities: { users }, entities: { cartItems} }) => {
  return {
    currentUser: users[session.id],
    userCartItems: Object.values(cartItems)
  };
};

const mDTP = dispatch => ({
  getAllCartItems: () => dispatch(getAllCartItems()),
  createCartItem: cartItem => dispatch(createCartItem(cartItem)),
  deleteCartItem: cartItemId => dispatch(deleteCartItem(cartItemId)),
  openModal: modal => dispatch(openModal(modal))
});

export default connect(mSTP, mDTP)(AddCart);