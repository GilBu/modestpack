import { connect } from 'react-redux';
import OrderItems from './order_items';
import { getAllOrderItems } from '../../actions/order_items_actions';

const mSTP = state => {
  return ({
    userOrderItems: Object.values(state.entities.orderItems),
    currentUserId: state.session.id
  })
}

const mDTP = dispatch => ({
  getAllOrderItems: () => dispatch(getAllOrderItems())
})

export default connect(mSTP, mDTP)(OrderItems)