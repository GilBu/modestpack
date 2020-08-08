import { connect } from 'react-redux';

import { fetchGames, searchGames } from '../../actions/game_actions';
import GameIndex from './game_index';
import {allGames} from '../../reducers/selectors';

const mSTP = (state, ownProps) => {
  debugger;
  return {
    // games: Object.values(state.entities.games)
    search: ownProps.search
  };
};

const mDTP = dispatch => ({
  fetchGames: () => dispatch(fetchGames()),
  searchGames: () => dispatch(searchGames())
});

export default connect(mSTP, mDTP)(GameIndex);