import React from 'react';

class GameShow extends React.Component {

    componentDidMount(){
        this.props.fetchGame(this.props.match.params.gameId);
    }
    render() {
        const { game, fetchGame } = this.props;
        console.log(game);
        if(game === undefined){
            return null;
        }
        return (
            <div>
                <div className="showcase-container">
                    <div className="showcase">
                        <p className="game-title">{game.title}</p>
                        <div className="showcase-info">
                            <img src="https://hb.imgix.net/6183cee1cfbc37619e7fbcd8fa5de845056c2e22.jpeg?auto=compress,format&fit=crop&h=425&w=741&s=9431191164d45f8c3466af142101f6dc"className="large-showcase"/>
                            <div className="small-showcase">
                                {/* <img>Cover Art</img> */}
                                <div className="pricing">
                                    <p className="game-platform">{game.platform}</p>
                                    <div className="prices">
                                        <p className="game-sale">{game.sale}</p>
                                        <p className="game-price">{game.price}</p>
                                    </div>
                                    <button className="add-to-cart">Add To Cart</button>
                                </div>
                            </div>
                        </div>
                        <div className="carousel">Carousel</div>
                    </div>
                </div>
                <div className="details">
                    <label>Platform
                        <p className="game-platform">{game.platform}</p>
                    </label>
                    <label>Operating System
                        <p className="game-operating-system">{game.operating_system}</p>
                    </label>
                    <label>Genre
                        <p className="game-genre">Genre</p>
                    </label>
                    <label>Developer
                        <p className="game-developer">{game.developer}</p>
                    </label>
                    <label>Publisher
                        <p className="game-publisher">{game.publisher}</p>
                    </label>
                    <label>System Requirements
                        <p className="game-system-requirements">{game.system_requirements}</p>
                    </label>
                    <label>Links
                        <p className="game-links">{game.links}</p>
                    </label>
                </div>
                <div className="description">
                    <label>Description
                        <p className="game-description">{game.description}</p>
                    </label>
                </div>
            </div>  
        )
    }
}

export default GameShow;