import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 138, 207, 144),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color:  Color.fromARGB(255, 10, 33, 13),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Colombo Market",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(255, 10, 33, 13),
              ),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Color.fromARGB(255, 255, 247, 2),
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color:  Color.fromARGB(255, 10, 33, 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
