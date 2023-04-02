import 'package:exercise_paml1/dashboardpage.dart';
import 'package:exercise_paml1/main.dart';
import 'package:exercise_paml1/registerpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fieldData = GlobalKey<FormState>();
  final username = TextEditingController();
  final passData = TextEditingController();

  bool eyeToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _fieldData,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(60)
                  ),
                  Image.asset(
                    'assets/image/pokemon.png',
                    width: 300,
                  ),
                  Padding(padding: EdgeInsets.all(10)
                  ),
                  Text(
                    "Let's get started",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    )),
                    Padding(padding: EdgeInsets.all(10)
                    ),
                  Text(
                    "There's No Sense In Going Out of",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Text(
                    "Your Way To Get Somebody To Like You.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(30)
                  ),
                  Container(
                    width: 400,
                    height: 80,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: username,
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter your name",
                        prefixIcon: Icon(Icons.person)
                    ),
                    validator: (value) {
                      bool valid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);

                      if (value.isEmpty) {
                        return "Please enter your name";
                      }
                    },
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 100,
                    child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: eyeToggle,
                    controller: passData,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            eyeToggle = !eyeToggle;
                          });
                        },
                        child: Icon(
                            eyeToggle ? Icons.visibility_off : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your password";
                      } else if (passData.text.length < 6) {
                        return "Please must be atleast 6 characters";
                      }
                    },
                )
                ),
                InkWell(
                  onTap: () {
                    if (_fieldData.currentState!.validate()) {
                      print("Success");
                      Navigator.push(context, 
                      MaterialPageRoute(builder:  (context) => DashboardPage(nama: username.text,)));
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => RegisterPage()));
                      }, child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.amber
                        ),
                      ))
                    ],
                  )
                )
                ],
              ),)),
        )
    );
  }
}
