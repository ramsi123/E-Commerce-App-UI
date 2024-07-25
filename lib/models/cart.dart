import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Force 1",
      price: "236",
      description: "The forward-thinking desing of his latest signature shoe.",
      imagePath: "lib/images/AirForce1.png"),

    Shoe(
        name: "Air Jordans",
        price: "220",
        description: "You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.",
        imagePath: "lib/images/AirJordan.png"),

    Shoe(
        name: "Air Max",
        price: "240",
        description: "A secure midfoot strap is suited for scoring binges and defensive.",
        imagePath: "lib/images/AirMax.png"),

    Shoe(
        name: "Blue Air Jordans",
        price: "190",
        description: "Bouncy cushioning is paired with soft yet supportive foam for rest of the day.",
        imagePath: "lib/images/BlueAirJordan.png"),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
