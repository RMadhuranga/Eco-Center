import 'package:center/common_widget/round_button.dart';
import 'package:center/view/login/login_view.dart';
import 'package:center/view/login/tru_login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoleView extends StatefulWidget {
  const RoleView({super.key});

  @override
  State<RoleView> createState() => _RoleViewState();
}

class _RoleViewState extends State<RoleView> {
  @override
  void initState() {
    //TODO implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context); // Size of the device

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Centered Image
          Center(
            child: Image.asset(
              "assets/img/home.png",
              width: media.width * 0.7,  // Adjust width to fit the center
              height: media.height * 0.5, // Adjust height for centering
              fit: BoxFit.contain, // Keeps aspect ratio while making it fit
            ),
          ),

          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title text, scaled for iPhone screen size
                    Flexible(
                      child: Text(
                        "Select Your Role",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48, // Adjust size based on iPhone 14 screen
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20), // Space between text and button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RoundButton(
                    title: "WholeSaler",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                      // Button action
                    },
                  ),
                ),

                 const SizedBox(height: 20), 

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RoundButton(
                    title: "Truck Driver",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TruckLoginView()));
                      // Button action
                    },
                  ),
                ),

                const SizedBox(height: 46), // Bottom padding for button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
