import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreen createState() => _AccountScreen();
}

class _AccountScreen extends State<AccountScreen> {
  bool rememberMe = false;
  bool _isPasswordVisible = false;
  get image => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context); // Add navigation logic here
                    },
                  ),
                ],
              ),
              // Center content
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/holymusic.png")),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Login text
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const SizedBox(height: 10),
              // Email TextFormField
              TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: Icon(
                    Icons.email_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Password TextFormField
              TextFormField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isPasswordVisible, // Toggle visibility
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    child: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Remember me row with checkbox button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        rememberMe = !rememberMe;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: rememberMe ? Colors.orange : Colors.white,
                        border: Border.all(
                          color: Colors.orange,
                        ),
                      ),
                      // child: Padding(
                      //   padding: const EdgeInsets.all(0.0),
                      child: rememberMe
                          ? Icon(
                        Icons.check,
                        size: 20.0,
                        color: Colors.white,
                      )
                          : Icon(
                        Icons.check_box_outline_blank_rounded,
                        size: 20,
                        color: Colors.orange,
                      ),

                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              // Sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal:125),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(50)) // Increase size
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              // Continue text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(width: 10), // Add some spacing between line and text
                      Text(
                        "or Continue with",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      // Add some spacing between text and line
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade400,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Icons row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 18 , horizontal: 28),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // side: BorderSide(color: Colors.orange), // Border color
                    ),
                    child: Row(
                      children: [
                        // Replace with the Facebook logo asset
                        Image.asset(
                          "assets/images/fb.png", // Change to your actual asset path
                          width: 25, // Adjust the width as needed
                          // color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // side: BorderSide(color: Colors.orange), // Border color
                    ),
                    child: Row(
                      children: [
                        // Replace with the Facebook logo asset
                        Image.asset(
                          "assets/images/google.png", // Change to your actual asset path
                          width:40 , // Adjust the width as needed
                          // color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical:6, horizontal: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // side: BorderSide(color: Colors.orange), // Border color
                    ),
                    child: Row(
                      children: [
                        // Replace with the Facebook logo asset
                        Image.asset(
                          "assets/images/apple.png", // Change to your actual asset path
                          width: 50, // Adjust the width as needed
                          // color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Account text
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an account?",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("  Sign up",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}