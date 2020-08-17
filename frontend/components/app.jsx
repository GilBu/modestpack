import React from 'react';
import {
    Route,
    Switch,
    Link
} from 'react-router-dom';

import GameShowContainer from './game_show/game_show_container'
import NavBarContainer from './nav_bar/nav_bar_container';
import Modal from './modal/modal';
import GameIndexContainer from './game_index/game_index_container';
import Search from './search/search';
import Footer from './footer/footer';
import OrderItemContainer from './order_items/order_items_container'

class App extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            search: ""
        }
        this.searchSpace = this.searchSpace.bind(this);
    }

    componentDidMount() {
        this.props.fetchGames();
        this.props.getAllCartItems();
    }

    searchSpace (text) {
        this.setState({ search: text })
    }

    

    render () {
        let { games, userCartItems} = this.props;
        const search = this.state.search;
        games = games.filter(game => {
            if (this.state.search == "")
                return game
            else if (game.title.toLowerCase().includes(this.state.search.toLowerCase())) {
                return game
            }
        })
        return (
            <div>
                <div className="main-page">
                    <div className="nav-container">
                        <Modal games={games}/>
                        <nav className="nav-content">
                            <Link to="/" className="nav-link">
                                <h1>Modest Pack</h1>
                            </Link>
                            <Search search={search} searchSpace={this.searchSpace}/>
                            <NavBarContainer userCartItems={userCartItems}/>
                        </nav>
                    </div>
                    <Switch>
                        <Route path="/orders" component={OrderItemContainer} />
                        <Route path="/games/:gameId" component={GameShowContainer} />
                        <Route path="/" component={() => <GameIndexContainer className="game-index" games={games} search={this.props.search == null ? "" : this.props.search} />} />
                    </Switch>
                </div>
                <Footer/>
            </div>
        );
    }
};

export default App;