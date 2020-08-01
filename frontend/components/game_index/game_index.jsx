import React from 'react';
import GameListItem from './game_list_item';

class GameIndex extends React.Component {
  componentDidMount() {
    this.props.fetchGames();
  }

  render() {
    const { games } = this.props;
    const gameItems = games.map(game => (
      <GameListItem
        key={game.id}
        game={game} />
    )
    );

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