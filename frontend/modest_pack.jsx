import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

import {login, logout, signup} from './util/session_api_util'

document.addEventListener('DOMContentLoaded', () => {
    window.login = login; //TBR
    window.logout = logout; //TBR
    window.signup = signup; //TBR
    const store = configureStore();
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
});


//<Root store={store} />