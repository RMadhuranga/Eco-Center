import 'package:center/common/color_extrnsion.dart';
import 'package:center/common_widget/line_textfield.dart';
import 'package:center/common_widget/round_button.dart';
import 'package:center/view/login/sign_up_view.dart';
import 'package:center/view/main_tabview/main_tabview.dart';
import 'package:flutter/material.dart';
// Import the Dropdown widget file

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                    SizedBox(height: media.width * 0.05),
                    Text(
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

                    SizedBox(height: media.width * 0.1),

                LineTextfield(
                    controller: txtEmail,
                    title: "Email",
                     placeholder: "Enter your email address",
                     keyboardType: TextInputType.emailAddress, // Pass the correct type here
                    obscureText: false, // Set to false for email
                ),

                   SizedBox(height: media.width * 0.07),

               LineTextfield(
                   controller: txtPassword,
                  title: "Password",
                  placeholder: "Enter your Password",
                  keyboardType: TextInputType.visiblePassword, // Change as appropriate
                  obscureText: !isShow,
                  right:IconButton(
                       onPressed: () {
                         setState(() {
                           isShow = !isShow;
                         });
              },
                   icon: Icon(
                    !isShow ?  Icons.visibility_off:
                    Icons.visibility, 
                    color: TColor.textTittle,)
            ),
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: media.width * 0.07),
                    RoundButton(
                      title: "Log In",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainTabView()),
                        );
                      },
                    ),
                      SizedBox(height: media.width * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                             Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUpView()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                " SignUp",
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
