# json.game do
#   json.partial! '/api/games/game', game: @game
# end

json.partial! '/api/games/game', game: @game

json.photoUrls @game.screenshots.map { |file| url_for(file) }