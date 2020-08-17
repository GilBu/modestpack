import { connect } from 'react-redux';

import { fetchGames, searchGames } from '../actions/game_actions';
import App from './app';
import { allGames } from '../reducers/selectors';
import Search from './search/search';
import { getAllCartItems, createCartItem, deleteCartItem, updateCartItem } from '../actions/cart_item_action';

const mSTP = (state, ownProps) => {
  return {
    games: Object.values(state.entities.games),
    search: ownProps.search
  };
};

const mDTP = dispatch => ({
  fetchGames: () => dispatch(fetchGames()),
  searchGames: () => dispatch(searchGames()),
  getAllCartItems: () => dispatch(getAllCartItems())
});

export default connect(mSTP, mDTP)(App);