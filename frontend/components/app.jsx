import React from 'react';
import {
    Route,
    Switch,
    Link
} from 'react-router-dom';

import GameShowContainer from './game_show/game_show_container'

import NavBarContainer from './nav_bar/nav_bar_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import Modal from './modal/modal';
import GameIndexContainer from './game_index/game_index_container';

class App extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            search: ""
        }
    }

    componentDidMount() {
        this.props.fetchGames();
    }

    searchSpace (e, keyword) {
        e.preventDefault();
        this.setState({ search: keyword })
    }

    render () {
        debugger;
        let {games} = this.props;

        games = games.filter(game => {
            if (this.state.search == "")
                return game
            else if (game.title.toLowerCase().includes(this.state.search.toLowerCase())) {
                return game
            }
        })

        return (
            <div>
                <div className="nav-container">
                    <Modal />
                    <nav className="nav-content">
                        <Link to="/" className="nav-link">
                            <h1>Modest Pack</h1>
                        </Link>
                        <NavBarContainer />
                    </nav>
                </div>
                <Switch>
                    <Route path="/games/:gameId" component={GameShowContainer} />
                    <Route path="/" component={() => <GameIndexContainer games={games} search={this.props.search == null ? "" : this.props.search} />} />
                </Switch>
            </div>
        );
    }
};

export default App;