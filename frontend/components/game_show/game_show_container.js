import { connect } from 'react-redux';

import { fetchGame } from '../../actions/game_actions';
import GameShow from './game_show';

const mSTP = (state, ownProps) => {
    const game = state.entities.games[ownProps.match.params.gameId];

    return {
        game
    };
};

const mDTP = dispatch => ({
    fetchGame: id => dispatch(fetchGame(id))
});

export default connect(mSTP, mDTP)(GameShow);