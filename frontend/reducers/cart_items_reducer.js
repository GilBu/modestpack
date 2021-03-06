import { REMOVE_ALL_CART_ITEMS, RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS, REMOVE_CART_ITEM } from '../actions/cart_item_action'

const cartItemsReducer = (state = {}, action) => {
  Object.freeze(state)
  let newState = Object.assign({}, state)
  switch (action.type) {
    case RECEIVE_CART_ITEM:
      let item = Object.values(action.cartItem)[0]
      newState[action.cartItem.id] = item
      return newState
    case RECEIVE_CART_ITEMS:
      return action.cartItems
    case REMOVE_CART_ITEM:
      delete newState[action.id]
      return action.allCartItems
    case REMOVE_ALL_CART_ITEMS:
      return {}
    default:
      return state
  }
}

export default cartItemsReducer