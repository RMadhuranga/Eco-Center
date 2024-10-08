import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/line_textfield.dart';
import 'package:center/common_widget/round_button.dart';
import 'package:center/view/login/role.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isShow = false; // Add this to manage password visibility

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
                    SizedBox(height: media.width * 0.02), // Decreased space between logo and "Sign Up"
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: media.width * 0.01), // Optional spacing adjustment
                    Text(
                      "Enter your credential to continue",
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
                      keyboardType: TextInputType.text, // Added keyboard type
                      obscureText: false, // Not an obscure field
                    ),
                    SizedBox(height: media.width * 0.04),
                    LineTextfield(
                      controller: txtEmail,
                      title: "Email",
                      placeholder: "Enter your email address",
                      keyboardType: TextInputType.emailAddress, // Pass the correct type here
                      obscureText: false, // Set to false for email
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
                    SizedBox(height: media.width * 0.04), // Add spacing before the RichText
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
                            recognizer:TapGestureRecognizer()..onTap = (){
                                print("Terms of Service click");
                              }
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
                              fontWeight: FontWeight.w500,),
                              recognizer:TapGestureRecognizer()..onTap = (){
                                print("Privacy Policy click");
                              }
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
