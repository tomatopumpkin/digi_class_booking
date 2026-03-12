import 'package:flutter/material.dart';
import '../services/auth_service.dart';

final AuthService authService = AuthService();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      body: SafeArea(
  child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(height: 10),

Align(
  alignment: Alignment.centerLeft,
  child: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
),

const SizedBox(height: 30),

          const Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2C3E90),
            ),
          ),
        
              const SizedBox(height: 8),
              const Text(
                "Please Sign In With Username And Password!",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2C3E90),
                ),
              ),
              const SizedBox(height: 40),

              /// 🔹 USERNAME
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: const Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFF39A9DB),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFF39A9DB),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              /// 🔹 PASSWORD
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFF39A9DB),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFF39A9DB),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              /// 🔹 SIGN IN BUTTON
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C3E90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              /// 🔹 OR TEXT
              const Center(
                child: Text(
                  "-  or  -",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 30),

              /// 🔹 SOCIAL LOGIN
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    /// GOOGLE LOGIN
    IconButton(
      icon: Image.asset("assets/google.png", width: 40),
      onPressed: () async {
        await authService.signInWithGoogle();
      },
    ),

    const SizedBox(width: 20),

    /// FACEBOOK LOGIN
    IconButton(
      icon: const Icon(Icons.facebook, size: 40, color: Colors.blue),
      onPressed: () async {
        await authService.signInWithFacebook();
      },
    ),

    const SizedBox(width: 20),

    /// APPLE LOGIN
    IconButton(
      icon: const Icon(Icons.apple, size: 40),
      onPressed: () async {
        await authService.signInWithApple();
      },
    ),

  ],
),

              const SizedBox(height: 40),

              /// 🔹 SIGN UP
              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: "Don’t Have An Account? "),
                      TextSpan(
                        text: "SIGN UP",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    )
    );
  }
}