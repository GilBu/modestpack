import * as APIUtil from '../util/game_api_util';

export const RECEIVE_GAMES = 'RECEIVE_GAMES';
export const RECEIVE_GAME = 'RECEIVE_GAME';

export const receiveGames = games => ({
    type: RECEIVE_GAMES,
    games
});

export const receiveGame = game => ({
    type: RECEIVE_GAME,
    game
});

export const fetchGames = () => dispatch => (
    APIUtil.fetchGames().then(games => (
        dispatch(receiveGames(games))
    ))
);

export const fetchGame = id => dispatch => (
    APIUtil.fetchGame(id).then(payload => (
        dispatch(receiveGame(payload))
    ))
);

export const searchGames = keyword => dispatch => (
    APIUtil.searchGames(keyword).then(games => (
            dispatch(receiveGames(games))
        ))
);