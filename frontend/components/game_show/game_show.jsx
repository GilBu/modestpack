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
                            <img className="large-img-showcase" src="https://hb.imgix.net/6183cee1cfbc37619e7fbcd8fa5de845056c2e22.jpeg?auto=compress,format&fit=crop&h=425&w=741&s=9431191164d45f8c3466af142101f6dc"className="large-showcase"/>
                            <div className="small-showcase">
                                <img className="small-img-showcase" src="https://hb.imgix.net/672995186a475f6b8c492d86bb76639afe423c64.jpeg?auto=compress,format&amp;fit=crop&amp;h=353&amp;w=616&amp;s=d5dd8882b0585de8eb9f301abe81b384"/>
                                <div className="pricing">
                                    <svg className="steam-icon" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width={24} height={24} viewBox="0 0 24 24"><path d="M 12 2 C 6.82 2 2.5507812 5.95 2.0507812 11 L 7.0195312 13.759766 C 7.5495313 13.289766 8.24 13 9 13 C 9.03 13 9.0500781 13.009766 9.0800781 13.009766 C 9.6800781 12.089766 10.449766 10.919609 11.009766 10.099609 C 11.009766 10.059609 11 10.03 11 10 C 11 8.93 11.419922 7.9299219 12.169922 7.1699219 C 13.679922 5.6599219 16.320078 5.6599219 17.830078 7.1699219 C 18.580078 7.9299219 19 8.93 19 10 C 19 11.07 18.580078 12.070078 17.830078 12.830078 C 17.070078 13.580078 16.07 14 15 14 C 14.97 14 14.930391 13.990234 14.900391 13.990234 C 14.080391 14.550234 12.910234 15.319922 11.990234 15.919922 C 11.990234 15.949922 12 15.97 12 16 C 12 17.66 10.66 19 9 19 C 7.34 19 6 17.66 6 16 C 6 15.83 6.0107812 15.66 6.0507812 15.5 L 2.0898438 13.300781 C 2.7198438 18.210781 6.92 22 12 22 C 17.52 22 22 17.52 22 12 C 22 6.48 17.52 2 12 2 z M 6.0507812 15.5 L 8.5097656 16.869141 C 8.6697656 16.959141 8.83 17 9 17 C 9.35 17 9.6891406 16.810234 9.8691406 16.490234 C 10.139141 16.000234 9.9702344 15.390859 9.4902344 15.130859 L 7.0195312 13.759766 C 6.5095312 14.189766 6.1607813 14.81 6.0507812 15.5 z M 15 8 A 2 2 0 0 0 15 12 A 2 2 0 0 0 15 8 z" /></svg>
                                    <p className="game-platform">{game.platform}</p>
                                    <div className="prices">
                                        <p className="game-sale">{game.sale}</p>
                                        <p className="game-price">{game.price}</p>
                                    </div>
                                    <button className="add-to-cart" >
                                        <i className="fa fa-shopping-cart"></i>Add To Cart</button>
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