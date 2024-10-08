import 'package:center/common/color_extrnsion.dart';
import 'package:center/view/home/home_view.dart';
import 'package:center/view/my_cart/my_cart_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeView(),
          const MyCartView(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
                offset: Offset(0, -2)
              )
            ]
          ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: TColor.primary,
            labelStyle: TextStyle(
              color: TColor.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelColor: TColor.primaryText,
            unselectedLabelStyle: TextStyle(
              color: TColor.primaryText,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(
                text: "Home",
                icon: Image.asset(
                  "assets/img/store_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 0? TColor.primary: TColor.primaryText,
                ),
              ),
        
              Tab(
                text: "Cart",
                icon: Image.asset(
                  "assets/img/cart_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 1? TColor.primary: TColor.primaryText,
                ),
              ),
        
              Tab(
                text: "Account",
                icon: Image.asset(
                  "assets/img/account_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 2? TColor.primary: TColor.primaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
