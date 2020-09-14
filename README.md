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

```
function Modal({ modal, closeModal }) {
    if (!modal) {
        return null;
    }
    let component;
    switch (modal) {
        case 'login':
            component = <LoginFormContainer />;
            break;
        case 'signup':
            component = <SignupFormContainer />;
            break;
        case 'selection':
            component = <SelectionContainer />;
            break;
        case 'cart':
            component = <CartItemContainer />;
            break;
        default:
            return null;
    }
    switch (modal) {
        case 'login':
        case 'signup':
        case 'selection':
            return (
                <div className="modal-background" onClick={closeModal}>
                    <div className="modal-image">
                        <div className="modal-child" onClick={e => e.stopPropagation()}>
                            {component}
                        </div>
                    </div>
                </div>
            );
        case 'cart':
            return (
                <div className="modal-background" onClick={closeModal}>
                    <div>
                        <div className="cart-model-container" onClick={e => e.stopPropagation()}>
                            {component}
                        </div>
                    </div>
                </div>
            );
        default:
            return null;
    }
    
}
```
On the nav bar there is a search bar that would instantly filter the index of games.

### Game Navigation

<img src="./gifs/gameNav.gif" width=1280 height=auto>

Each game being sold on Modest Pack would have a show page where you can see details on the game and purchase the game.

### Carousel Gallery

<img src="./gifs/carousel.gif" width=1280 height=auto>

```
let items = this.sources.map((source, index) =>
            <Slide className="slide"
                key={'slide' + index}
                src={source}
                selected={(this.state.index === index) ? true : false}
                index={index}
                height={this.height}
                width={this.width}
            />
);

<div
    className="slider"
    onClick={this.handleClick}
    style={{ transform: `translate(${delta}px)` }}
    style={{ transform: `translate(${delta}%)` }}
>
    {items}
</div>

```

Each game would have a carousel gallery display each image in the caraosel and the ability to select an image to display a larger version of the image.

### Shopping Cart

<img src="./gifs/cart.gif" width=1280 height=auto>

```
filledCart(cartItemsObj) {
    let allTotal = 0;
    let allSaleTotal = 0;
    return (
      <div>
        <div onClick={this.props.closeModal} className="cart-close">
          <svg xmlns="http://www.w3.org/2000/svg"
            width="16px" height="16px"
            viewBox="0 0 512 512">
            <path ....................................../>
          </svg>
        </div>
        <h1 className="cart-header">Shopping Cart</h1>

        <div className="buy-page">
          <div className="new-cart-div">
            {cartItemsObj.map(cartItem => {
              let game = this.props.games[cartItem[1].game_id]
              allTotal += (game.price);
              allSaleTotal += (game.price * (1 - game.sale / 100));
              return (
                <div
                  key={game.id}
                  className="cart-item-div"
                >
                  <div className="cart-item-left">
                    <button
                      className="delete-item-in-cart"
                      onClick={() =>
                        this.deleteItem(cartItem[1])
                      }
                    >
                      <svg xmlns="http://www.w3.org/2000/svg"
                        width="16px" height="16px"
                        viewBox="0 0 512 512">
                        <path ......................................... />
                        </svg>
                      </button>
                    <Link
                      onClick={() => this.toTop()}
                      className="public-game-links"
                      to={`/games/${game.id}`}
                    >
                      {game.title}
                    </Link>
                  </div>
                  <div className="cart-item-right">
                    <div className="msrp-game">
                      ${(game.price).toFixed(2)}
                    </div>
                    <div className="sale-game">
                      ${(game.price * (1 - game.sale / 100)).toFixed(2)}
                    </div>
                  </div>
                </div>
              );
            }
            )}
          </div>
        </div>
        <div className="total-container">
          <label className="total-label">Total:</label>
          <div className="total-amounts">
            <div className="msrp-total">${allTotal.toFixed(2)}</div>
            <div className="sale-total">${allSaleTotal.toFixed(2)}</div>
          </div>
        </div>
        <div className="cart-header">Checkout</div>
        <div className="purchase-container">
          <button onClick={() => this.purchase()} className="purchase-button">Purchase</button>
        </div>
      </div>
    )

  }
```

The shopping cart would store a list of unique items the user has selected.

### Purchase History

<img src="./gifs/orders.gif" width=1280 height=auto>

Shows a list of past purchases thru the shopping cart.

