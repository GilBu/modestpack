import React from 'react';
import GameListItem from './game_list_item';

class GameIndex extends React.Component {

  render() {
    const { games } = this.props;
    
    const gameItems = games.map(game => {
      return (
        <GameListItem 
          key={game.id}
          game={game}
        />
      )
    })


    return (
      <div className="game-list-container">
        <ul className="game-list">
          {gameItems}
        </ul>
      </div>
    );
  }
}

export default GameIndex;