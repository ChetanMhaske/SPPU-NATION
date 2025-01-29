import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login & SignUp Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              // Decorative Illustration
              Container(
                height: 150,
                alignment: Alignment.center,
                child: Text(
                  "LogIn",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Welcome Text
              Text(
                "Welcome Back!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Login to continue",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              // Form Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    // Email Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.email, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Password Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        // Add login logic
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 80, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Sign-Up Link
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Don't have an account? Sign up here",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String? selectedGender = "Male";
  String? selectedCourse;

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final List<String> courses = [
    'B.E/B.Tech for Computer Engineering',
    'B.E/B.Tech for Information Technology',
    'B.E/B.Tech for Mechanical Engineering',
    'B.E/B.Tech for Electronics and Communications Engineering',
    'B.E/B.Tech for Electrical Engineering',
    'B.E/B.Tech for Chemical Engineering',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              // Decorative Illustration
              Container(
                height: 150,
                alignment: Alignment.center,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Welcome Text
              Text(
                "Create Your Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Sign up to get started",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              // Form Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    // Name Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Name',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.person, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Email Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.email, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Phone Number Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Phone Number',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.phone, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Password Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Confirm Password Input
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: TextField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Confirm Password',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Gender Selection (Radio Buttons)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Gender: ',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Radio<String>(
                              value: "Male",
                              groupValue: selectedGender,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedGender = value;
                                });
                              },
                            ),
                            Text("Male", style: TextStyle(color: Colors.white)),
                            Radio<String>(
                              value: "Female",
                              groupValue: selectedGender,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedGender = value;
                                });
                              },
                            ),
                            Text("Female", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Dropdown for Course Selection
                    SizedBox(
                      width: 300,
                      height: 45,
                      child: DropdownButton<String>(
                        hint: Text(
                          "Select Course",
                          style: TextStyle(color: Colors.black),
                        ),
                        value: selectedCourse,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCourse = newValue;
                          });
                        },
                        items: courses.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        isExpanded: true,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Sign-Up Button
                    ElevatedButton(
                      onPressed: () {
                        // Add sign-up logic
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 80, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Back to Login Link
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Already have an account? Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
