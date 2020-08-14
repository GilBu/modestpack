import { connect } from 'react-redux';

import { fetchGame } from '../../actions/game_actions';
import GameShow from './game_show';
import { createCartItem } from '../../actions/cart_item_action'
import { getAllCartItems, updateCartItem } from '../../actions/cart_item_action'

const mSTP = (state, ownProps) => {
    const game = state.entities.games[ownProps.match.params.gameId];
    const userCartItems = Object.values(state.entities.cartItems)
    return {
        game,
        userCartItems
    };
};

const mDTP = dispatch => ({
    fetchGame: id => dispatch(fetchGame(id)),
    createCartItem: (game) => dispatch(createCartItem(game)),
    getAllCartItems: () => dispatch(getAllCartItems()),
    updateCartItem: (data, item) => dispatch(updateCartItem(data, item))
});

export default connect(mSTP, mDTP)(GameShow);