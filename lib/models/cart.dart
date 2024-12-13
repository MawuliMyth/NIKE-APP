 import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart  extends ChangeNotifier{

  // list of shoes for sale
     List<Shoe> shoeShop = [


        Shoe(
            name: 'Nike Blazer Mid',
            price: '230',
            imagePath: 'lib/images/mich.jpg',
            description: 'Iconic heritage.Bold style that redefines street fashion'
        ),



       Shoe
         (name: 'Nike Dunk Low',
         price: '296',
         imagePath: 'lib/images/polo.jpg',
         description: 'Classic meets comfort. Timeless design with soft cushioning for everyday wear.',
       ),

       Shoe(
           name: 'Nike Air Jordan 1',
           price: '230',
           imagePath: 'lib/images/yeye.png',
           description: 'Smooth, responsive ride. Built to keep you running farther with less impact.',
       ),

       Shoe(
         name: 'Nike Air Max Plus',
         price: '290',
         imagePath: 'lib/images/yiyi.jpg',
         description: 'Train harder. Unmatched stability for intense gym sessions',
           ),

       Shoe(
         name: 'Nike Pegasus Turbo',
         price: '400',
         imagePath: 'lib/images/voto.png',
         description:'Lightweight speed. Propels you forward with effortless energy return.',
       ),



     ];

   // list of items in user cart

List<Shoe> userCart = [];

   // get list of items shoes for sale
     List<Shoe> getShoeList(){
       return shoeShop;
     }


   // get cart
  List<Shoe> getUserCart (){
       return userCart;
 }

   // add items to cart
    void addItemToCart( Shoe shoe){
       userCart.add(shoe);
       notifyListeners();
    }

   // removes items from cart
 void removeItemFromCart ( Shoe shoe) {
       userCart.remove(shoe);
       notifyListeners();
 }

 }