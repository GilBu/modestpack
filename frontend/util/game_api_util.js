export const fetchGames = () => {
    return $.ajax({
        method: 'GET',
        url: 'api/games'
    })
}

export const fetchGame = id => {
    return $.ajax({
        method: 'GET',
        url: `api/games/${id}`
    })
}

export const searchGames = keyword => {
    return $.ajax({
        method: 'GET',
        url: `api/games/`,
        data: { keyword }
    })
}