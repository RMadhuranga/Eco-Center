import 'package:flutter/material.dart';
import 'package:eco/ui/loginscreen.dart';

class TSignUpScreen extends StatefulWidget {
  const TSignUpScreen({super.key});

  @override
  State<TSignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<TSignUpScreen> {
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final idController = TextEditingController();
  final addressController = TextEditingController();
  final vehicleTypeController = TextEditingController();
  final vehicleNumberController = TextEditingController();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ListTile(
                  title: Text(
                    "Create Your Account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Full Name field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      hintText: "Full Name",
                    ),
                  ),
                ),
                // Email field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      border: InputBorder.none,
                      hintText: "Email",
                    ),
                  ),
                ),
                // Phone field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: phone,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      border: InputBorder.none,
                      hintText: "Phone",
                    ),
                  ),
                ),
                // ID field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: idController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.badge),
                      border: InputBorder.none,
                      hintText: "ID",
                    ),
                  ),
                ),
                // Address field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: addressController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.home),
                      border: InputBorder.none,
                      hintText: "Address",
                    ),
                  ),
                ),
                // Vehicle Type field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: vehicleTypeController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.directions_car),
                      border: InputBorder.none,
                      hintText: "Vehicle Type",
                    ),
                  ),
                ),
                // Vehicle Number field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: vehicleNumberController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.confirmation_number),
                      border: InputBorder.none,
                      hintText: "Vehicle Number",
                    ),
                  ),
                ),
                // Password field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: password,
                    obscureText: !isVisible,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),
                ),
                // Confirm Password field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.withOpacity(.2),
                  ),
                  child: TextFormField(
                    controller: confirmPassword,
                    obscureText: !isVisible,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: InputBorder.none,
                      hintText: "Confirm Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Sign Up button
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 63, 117, 83),
                        Color.fromARGB(255, 10, 33, 13),
                      ],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your signup logic here (e.g., API call)
                      // For now, simply navigate to the login screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Already have an account? Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        // Navigate to login
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 33, 13),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
