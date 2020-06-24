import React from 'react';
import {
    Route,
    Switch,
    Link
} from 'react-router-dom';

import NavBarContainer from './nav_bar/nav_bar_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div>
        <nav>
            <Link to="/" className="nav-link">
                <h1>Modest Pack</h1>
            </Link>
            <NavBarContainer />
        </nav>
        <Switch>
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
        </Switch>
    </div>
);

export default App;