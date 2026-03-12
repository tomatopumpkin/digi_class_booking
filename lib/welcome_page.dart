import 'package:flutter/material.dart';
import 'login_page.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFF39A9DB)],
            begin: Alignment(0.0, -0.7),
            end: Alignment(0.0, 1.0),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [

              const SizedBox(height: 40),

              /// 🔹 LOGO
              Image.asset(
                "assets/images/logo.png",
                height: 160,
              ),

              const SizedBox(height: 40),

              /// 🔹 CARD
              Expanded(
                child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20)
                ,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color(0xF2FFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black12,
                        offset: Offset(0, 10),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      /// 🔹 WELCOME
                      const Text(
                        "WELCOME",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2C3E90),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Sign in or create an account \nto get started!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),

                      const SizedBox(height: 30),

                      /// 🔹 SIGN IN
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2C3E90),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ),
  );
                          },
                          child: const Text("Sign In"),
                        ),
                      ),

                      const SizedBox(height: 15),

                      /// 🔹 CREATE ACCOUNT
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF39A9DB),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Create an Account"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
