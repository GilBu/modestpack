import { combineReducers } from 'redux';
import cartItems from './cart_items_reducer';
import orderItems from './order_items_reducer';
import users from './users_reducer';
import games from './games_reducer';

const entitiesReducer = combineReducers({
    users,
    games,
    cartItems,
    orderItems
});

export default entitiesReducer;