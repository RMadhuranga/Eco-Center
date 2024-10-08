import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/line_textfield.dart';
import 'package:center/common_widget/round_button.dart';
import 'package:center/view/login/role.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TruckSignUpView extends StatefulWidget {
  const TruckSignUpView({super.key});

  @override
  State<TruckSignUpView> createState() => _TruckSignUpViewState();
}

class _TruckSignUpViewState extends State<TruckSignUpView> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtVehicleType = TextEditingController(); // Added controller for vehicle type
  TextEditingController txtVehicleNumber = TextEditingController(); // Added controller for vehicle number
  TextEditingController txtPassword = TextEditingController();
  bool isShow = false; // Manage password visibility

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: Colors.white,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/logoe.png",
                          width: 200,
                          height: 150,
                        ),
                      ],
                    ),
                    SizedBox(height: media.width * 0.01),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: media.width * 0.01),
                    Text(
                      "Enter your credentials to continue",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: media.width * 0.06),
                    LineTextfield(
                      controller: txtUsername,
                      title: "Username",
                      placeholder: "Enter your username",
                      keyboardType: TextInputType.text,
                      obscureText: false,
                    ),
                    SizedBox(height: media.width * 0.04),
                    LineTextfield(
                      controller: txtEmail,
                      title: "Email",
                      placeholder: "Enter your email address",
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    SizedBox(height: media.width * 0.04),
                    LineTextfield(
                      controller: txtVehicleType,
                      title: "Vehicle Type",
                      placeholder: "Enter your vehicle type",
                      keyboardType: TextInputType.text, // Vehicle type is text input
                      obscureText: false,
                    ),
                    SizedBox(height: media.width * 0.04),
                    LineTextfield(
                      controller: txtVehicleNumber,
                      title: "Vehicle Number",
                      placeholder: "Enter your vehicle number",
                      keyboardType: TextInputType.text, // Vehicle number is also text input
                      obscureText: false,
                    ),
                    SizedBox(height: media.width * 0.04),
                    LineTextfield(
                      controller: txtPassword,
                      title: "Password",
                      placeholder: "Enter your Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !isShow,
                      right: IconButton(
                        onPressed: () {
                          setState(() {
                            isShow = !isShow;
                          });
                        },
                        icon: Icon(
                          !isShow ? Icons.visibility_off : Icons.visibility,
                          color: TColor.textTittle,
                        ),
                      ),
                    ),
                    SizedBox(height: media.width * 0.04),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          const TextSpan(
                            text: "By continuing you agree to our ",
                          ),
                          TextSpan(
                            text: "Terms of Service",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Terms of Service clicked");
                              },
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "Privacy Policy ",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Privacy Policy clicked");
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: media.width * 0.05),
                    RoundButton(
                      title: "Sign Up",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RoleView()),
                        );
                      },
                    ),
                    SizedBox(height: media.width * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                " Sign In",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
