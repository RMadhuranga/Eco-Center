import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/product_cell.dart';
import 'package:center/common_widget/section_view.dart';
import 'package:center/view/home/product_details_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List<Map<String, dynamic>> ExclusiveOfferArr = [
    {
      "name": "Carrot",
      "icon": "assets/img/carrot.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350"
    },
    {
      "name": "Onion",
      "icon": "assets/img/onion.jpeg",
      "qty": "5",
      "unit": "kg",
      "price": "Rs.500"
    },
    {
      "name": "bell pepper",
      "icon": "assets/img/bell_pepper_red.png",
      "qty": "10",
      "unit": "kg",
      "price": "Rs.600"
    },
    {
      "name": "Cabbage",
      "icon": "assets/img/cabbage.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350",
      
    },
    {
      "name": "Potatoes",
      "icon": "assets/img/potatoes.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350",
      
    },
    {
      "name": "Broccoli",
      "icon": "assets/img/broccoli.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350",
      
    },
    {
      "name": "Cucumbers",
      "icon": "assets/img/cucumbers.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350",
      
    },
    
    {
      "name": "Lettuce",
      "icon": "assets/img/lettuce.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350",
      
    },
    {
      "name": "Cabbage",
      "icon": "assets/img/cabbage.jpeg",
      "qty": "7",
      "unit": "kg",
      "price": "Rs.350",
      
    },

  ];

  // Define this variable if SectionView requires it
  bool isShowSeeAllButton = true; // or false based on your requirement

  @override
  Widget build(BuildContext context) {
    // Correct usage of MediaQuery (if needed)
    // var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/logoe.png",
                    width: 25,
                  ),
                ],
              ),

              const SizedBox(height: 4),

              // Location Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/location.png",
                    width: 16,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Dambulla",
                    style: TextStyle(
                      color: TColor.darkGray,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Search Bar Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: txtSearch,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search, color: TColor.darkGray),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Banner Image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/img/banner_top.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Section View
              SectionView(
                title: "Available Vegetables",
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                isShowSeeAllButton: isShowSeeAllButton, // Ensure this parameter is passed
                onPressed: () {
                  // Define what happens when 'See All' is pressed
                  // For example, navigate to another screen
                },
              ),

              // Exclusive Offers List
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: ExclusiveOfferArr.length,
                  itemBuilder: (context, index) {
                    var pObj = ExclusiveOfferArr[index];

                  return ProductCell(
                      pObj: pObj,
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=> const ProductDetails()));
                                           // Define what happens when a product is pressed
                      },
                       onCart: () { 

                        },
                    );  
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
