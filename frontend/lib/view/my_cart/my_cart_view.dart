import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/cart_item_row.dart';
import 'package:center/view/my_cart/checkout_view.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  List cartArr = [
    {
      "name": "Carrot",
      "icon": "assets/img/carrot.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350"
    },
    {
      "name": "Onion",
      "icon": "assets/img/onion.jpeg",
      "qty": "5",
      "unit": "1kg, Price",
      "price": "Rs.500"
    },
    {
      "name": "Bell pepper",
      "icon": "assets/img/bell_pepper_red.png",
      "qty": "10",
      "unit": "1kg, Price",
      "price": "Rs.600"
    },
    {
      "name": "Cabbage",
      "icon": "assets/img/cabbage.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350",
    },
    {
      "name": "Potatoes",
      "icon": "assets/img/potatoes.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350",
    },
    {
      "name": "Broccoli",
      "icon": "assets/img/broccoli.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350",
    },
    {
      "name": "Cucumbers",
      "icon": "assets/img/cucumbers.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350",
    },
    {
      "name": "Lettuce",
      "icon": "assets/img/lettuce.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350",
    },
    {
      "name": "Cabbage",
      "icon": "assets/img/cabbage.jpeg",
      "qty": "7",
      "unit": "1kg, Price",
      "price": "Rs.350",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true, 
        title: Text(
          "My Cart",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Main cart items list
          ListView.separated(
            padding: const EdgeInsets.all(20.0),
            itemCount: cartArr.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black26,
              height: 1,
            ),
            itemBuilder: (context, index) {
              var pObj = cartArr[index] as Map? ?? {};
              return CartItemRow(pObj: pObj);
            },
          ),
          // Checkout button
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                    onPressed: () {
                      showCheckout();

                    },
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)),
                    minWidth: double.maxFinite,
                    elevation: 0.1,
                    color: TColor.primary,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        const Center(
                          child: Text(
                            "Go to Checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(55),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: const Text(
                            "\$10.96",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ); 
  }

  void showCheckout(){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: false,
      context: context,
       builder: (context){
        return const CheckoutView();
       });
  }
}
