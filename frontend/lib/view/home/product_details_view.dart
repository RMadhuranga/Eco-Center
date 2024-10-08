import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/round_button.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
 
   @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return  Scaffold(
          backgroundColor: Colors.white,
          body:  SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: media.width * 0.8 ,
                           decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(15),
                       ),
                          alignment: Alignment.center,
                          child: Image.asset("assets/img/carrot.jpeg",
                          width:media.width * 0.7,
                          ),
                          ),

        SafeArea(
            child:AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/img/back.png",
                width: 20,
                height: 20,
              ),
            ),
            actions:[ IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/img/share.png",
                width: 20,
                height: 20,
              ),
            ),],
          ),),
                      ],
                    ),

      

              //   SizedBox(height: media.width * 0.05),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          children: [
                          Expanded(
                            child: Text(
                                "Fresh Carrot",
                                 style: TextStyle(
                                 color: TColor.primaryText,
                                 fontSize: 24,
                                 fontWeight: FontWeight.w700,
                             ),
                            ),
                          ),  
                      ],
                 ),
                 Text(
                  "1kg, Price",
                    style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 15,),

                  Row(
                    children: [
                      InkWell(
                        onTap:(){

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/img/sub_green.png",
                          width: 20,
                          height: 20,),
                        ),
                      ),


                   Container(
                          width: 45,
                          height:45,
                          padding: const EdgeInsets.symmetric(
                            vertical: 45,
                            horizontal: 45,) ,
                           decoration: BoxDecoration(
                           color: Colors.white,
                            border: Border.all(color: TColor.placeholder.withOpacity(0.5),
                             width: 1,),
                            borderRadius: BorderRadius.circular(15),
                           
                       ),
                          alignment: Alignment.center,
                          child:Text(
                                "1",
                                  style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                  ),
                ),  
                      
              ),   
               InkWell(
                 onTap:(){

                   },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset("assets/img/add_green.png",
                    width: 20,
                    height: 20,),
                  ),
                ),


                const Spacer(),  
                   Text(
                    "\Rs: 250",
                    style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),  
             ],
            ),

                  const SizedBox(height: 15,),

                  const Divider(
                    color:Colors.black26,
                    height: 1,),

                     const SizedBox(height: 8,),

                     Row(
                          children: [
                          Expanded(
                            child: Text(
                                "Prdouct Details",
                                 style: TextStyle(
                                 color: TColor.primaryText,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600,
                             ),
                            ),
                          ),  

                          IconButton(
                            onPressed: (){
                           
                            },
                            icon: Image.asset("assets/img/detail_open.png",
                            width: 15,
                            height: 15,
                            ),
                           ),
                      ],
                 ),

                 Text(
                    "eco-friendly carrots are sustainably grown, rich in nutrients,and chemical for healthy eating!",
                    style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                  const SizedBox(height: 15,),

                RoundButton(
                      title: "Add to Cart",
                      onPressed: () {
                        
                  },
                ),   

                      ],))
                  /*  Text(
                      "Login",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: media.width * 0.03),
                    Text(
                      "Enter your email and password",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: media.width * 0.1),*/

                
                    
              ],


            ),
          ),
        );
  }
}