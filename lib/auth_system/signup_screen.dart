import 'package:flutter/material.dart';
import 'package:flutter_classb/auth_system/login_screen.dart';
import 'package:flutter_classb/home_screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transition/transition.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/dashatars.png',
                height: 190,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefix: const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.email,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text("Name"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefix: const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.email,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text("Email Address"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefix: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.password,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Password"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefix: const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.password,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Confirmation Password"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      Transition(
                          child: const LoginScreen(),
                          transitionEffect: TransitionEffect.FADE));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    "Have an account? Login here",
                    style: GoogleFonts.lobster(),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: const HomeScreen(),
                            transitionEffect: TransitionEffect.FADE));
                  },
                  child: Text(
                    "SignUp",
                    style: GoogleFonts.lobster(
                      fontSize: 24,
                    ),
                  )),
              // InkWell(
              //   onTap: () {
              //     print("Hello");
              //   },
              //   child: Center(
              //     child: Container(
              //       width: MediaQuery.of(context).size.width * 0.8,
              //       height: 30,
              //       decoration: BoxDecoration(
              //         color: Colors.deepPurple,
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       child: const Center(
              //         child: Text(
              //           "Login",
              //           style: TextStyle(color: Colors.white),
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
