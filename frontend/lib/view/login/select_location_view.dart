import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/dropdown.dart';
import 'package:center/common_widget/round_button.dart';
import 'package:center/view/login/role.dart';
import 'package:flutter/material.dart';
 // Import the Dropodown widget file

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});

  @override
  State<SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<SelectLocationView> {
  TextEditingController txtOTP = TextEditingController();
  String? selectedZone; // Variable to hold the selected zone

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/img/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
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
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/select_location.png",
                      width: media.width * 0.5,
                    ),
                    SizedBox(height: media.width * 0.1),
                    Text(
                      "Select your location",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26, // Small text remains readable on iPhone
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: media.width * 0.03),
                    Text(
                      "Switch on your location to stay in tune with\nwhat's happening in your area",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16, // Small text remains readable on iPhone
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: media.width * 0.1),
                    Dropodown(
                      title: "Your Zone", // Title of the dropdown
                      placeholder: "Select your zone", // Placeholder text
                      valueList: const ["Zone 1", "Zone 2"], // List of zones
                      selectedValue: selectedZone, // Bind the selected value
                      didChange: (String? newValue) {
                        setState(() {
                          selectedZone = newValue; // Update selected zone
                        });
                      },
                    ),
                    SizedBox(height: media.width * 0.07),

                     Dropodown(
                      title: "Your Area", // Title of the dropdown
                      placeholder: "Types of your area", // Placeholder text
                      valueList: const ["Area 1", "Area 2"], // List of zones
                      selectedValue: selectedZone, // Bind the selected value
                      didChange: (String? newValue) {
                        setState(() {
                          selectedZone = newValue; // Update selected zone
                        });
                      },
                    ),
                    SizedBox(height: media.width * 0.01),

                    RoundButton(
                    title: "submit",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RoleView()));
                      // Button action
                    },
                  ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
