import { connect } from 'react-redux';

import GamesIndex from './game_index';
import { requestAllGames } from '../../actions/game_actions';

const mapStateToProps = state => ({
    Games: receiveGames(state)
});

const mapDispatchToProps = dispatch => ({
    requestAllGames: () => dispatch(requestAllGames())
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(GamesIndex);