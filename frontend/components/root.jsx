import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter } from 'react-router-dom';
import App from './app.jsx';
import AppContainer from './app_container';

const Root = ({ store }) => (
    <Provider store={store}>
        <HashRouter>
            <AppContainer />
        </HashRouter>
    </Provider>
);

export default Root;