import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  void login() async {
    setState(() => isLoading = true);

    await Future.delayed(const Duration(seconds: 1)); // จำลองเช็ค login

    if (emailController.text == "admin@jlee.com" &&
        passwordController.text == "1234") {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email หรือ Password ไม่ถูกต้อง")),
      );
    }

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(Icons.school, size: 90, color: Colors.blue),

              const SizedBox(height: 20),

              const Text(
                "DigiWorld Academy",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: isLoading ? null : login,
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text("Login"),
                ),
              ),

              const SizedBox(height: 10),

              const Text("สำหรับนักเรียน Python • Roblox • Matata • Scratch"),
            ],
          ),
        ),
      ),
    );
  }
}
