import { combineReducers } from 'redux';

import users from './users_reducer';
import games from './games_reducer';

const entitiesReducer = combineReducers({
    users,
    games
});

export default entitiesReducer;