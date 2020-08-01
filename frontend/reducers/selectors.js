export const allGames = ({ games }) => {
  return Object.keys(games).map(id => games[id]);
}