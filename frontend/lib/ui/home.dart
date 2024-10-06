import 'package:eco/ui/truckdriver.dart';
import 'package:eco/ui/wholesaler.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: RichText(
                  text: const TextSpan(
                    text: 'Fresh',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 25, 102, 47),
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Vegetable are ready!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 25, 102, 47),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height * .3,
                child: Image.asset('assets/home.png'),
              ),
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255).withOpacity(.5),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: 10,
                      right: 0,
                      left: 0,
                      child: Text(
                        'Select Your Role',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                       onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const Wholesaler ()));
                      },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                 Color.fromARGB(255, 14, 59, 29),
                                 Color.fromARGB(255, 3, 30, 12),
                              ],
                              stops: [0.0, 1.0],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              'Wholesaler',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                       onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const TruckDriver ()));
                      },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 14, 59, 29),
                                Color.fromARGB(255, 3, 30, 12),
                              ],
                              stops: [0.0, 1.0],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              'Truck Driver',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
