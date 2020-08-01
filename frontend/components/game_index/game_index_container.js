import { connect } from 'react-redux';

import { fetchGames } from '../../actions/game_actions';
import GameIndex from './game_index';
import {allGames} from '../../reducers/selectors';

const mSTP = (state) => {
  return {
    games: Object.values(state.entities.games)
  };
};

const mDTP = dispatch => ({
  fetchGames: () => dispatch(fetchGames())
});

export default connect(mSTP, mDTP)(GameIndex);