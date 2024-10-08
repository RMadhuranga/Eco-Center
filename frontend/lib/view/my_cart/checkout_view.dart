import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(30),
        ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text(
                  "Checkout",
                   style: TextStyle(
                   color: TColor.primaryText,
                   fontSize: 20,
                   fontWeight: FontWeight.w700,
                ),
              ),

               InkWell(
                   onTap: (){
                    Navigator.pop(context);

                },
                                child: Image.asset(
                "assets/img/close.png",
                width: 15,
                height: 15,
                color: TColor.primaryText,
              ),
            ),
            ],
          ),
        ),

        const Divider(
              color: Colors.black26,
              height: 1,
            ), 

            Row(
              children: [
                  Text(
                  "Checkout",
                   style: TextStyle(
                   color: TColor.primaryText,
                   fontSize: 20,
                   fontWeight: FontWeight.w700,
                ),
              ),
                
              ],
            ),
             


              RoundButton(title: "Place Order",
               onPressed: (){
          
               }),
          
            ],
            
          ),
        );
    
  }
}