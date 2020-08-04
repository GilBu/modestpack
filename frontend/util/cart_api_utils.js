export const updateRemoteCartItems = (cart, callback, updateCookieCart) => {
    var parsedCart = [];
    cart.forEach(function (obj) {
      parsedCart.push({ product_id: obj.product.id, quantity: obj.quantity });
    });
    $.ajax({
      url: "api/shopping_cart_items",
      type: "post",
      dataType: "json",
      data: { shopping_cart_items: JSON.stringify(parsedCart) },
      success: function (data) {
        CartActions.receiveCart(data);
        updateCookieCart && updateCookieCart(data);
        callback && callback();
      }
    });
}

export const fetchUserCart = () => {
    return $.ajax({
      url: "api/shopping_cart_items",
      type: "get",
      dataType: "json",
      success: function (data) {
        CartActions.receiveCartWithImages(data);
      }
    });
}

export const fetchCookieCart = () => {
    var cart = reactCookie.load('cookieCart');
    CartActions.receiveCart(cart);
}

export const deleteCart = (callback) => {
    $.ajax({
      url: "api/shopping_cart_items/1",
      type: "delete",
      dataType: "json",
      success: function (data) {
        CartActions.receiveCart([]);
        callback && callback();
      }
    });
}