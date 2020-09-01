# Modest Pack

Modest Pack, a Humble Bundle clone, is an online store where users can purchase games and create wishlist for those games.

(https://modest-pack.herokuapp.com/ "Live demo")

## Technologies

* Backend
  * Ruby on Rails
  * ActiveRecord
  * AWS
  * PostgreSQL
* Frontend
  * React
  * Redux

## Features

* Modal for login
* Secure user authentication
* Search thru game titles
* View and purchase games
* Carousel Gallery for each game
* Shopping Cart
* Purchase History

### Modal Login

<img src="./gifs/login.gif" width=1280 height=auto>

Nav bar will contain buttons to open a modal that either login or sign up for the website. The modal contain input fields that take in a username and password to login or signup, a button to render another modal that would have buttons to change to a login or signup modal, and the login modal would have a demo user login.

### Search

<img src="./gifs/search.gif" width=1280 height=auto>

On the nav bar there is a search bar that would instantly filter the index of games.

### Game Navigation

<img src="./gifs/gameNav.gif" width=1280 height=auto>

Each game being sold on Modest Pack would have a show page where you can see details on the game and purchase the game.

### Carousel Gallery

<img src="./gifs/carousel.gif" width=1280 height=auto>

Each game would have a carousel gallery display each image in the caraosel and the ability to select an image to display a larger version of the image.

### Shopping Cart

<img src="./gifs/cart.gif" width=1280 height=auto>

The shopping cart would store a list of unique items the user has selected.

### Purchase History

<img src="./gifs/orders.gif" width=1280 height=auto>

Shows a list of past purchases thru the shopping cart.

