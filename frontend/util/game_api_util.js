export const fetchGames = data => {
    return $.ajax({
        method: 'GET',
        url: 'api/games',
        data
    })
}

export const fetchGame = id => {
    return $.ajax({
        method: 'GET',
        url: `api/games/${id}`
    })
}