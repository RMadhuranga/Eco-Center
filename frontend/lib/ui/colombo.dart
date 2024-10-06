import 'package:eco/widgets/homeappbar.dart';
import 'package:flutter/material.dart';

class ColomboMarket extends StatelessWidget {
  const ColomboMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            height: 500, // temporary height 
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(237, 236, 242, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left:5),
                        height: 50,
                        width: 300,
                        child: TextFormField(),
                      )
                    ],),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
