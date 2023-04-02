import 'package:exercise_paml1/dashboardpage.dart';
import 'package:exercise_paml1/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formReg = GlobalKey<FormState>();
  static final _userController = TextEditingController();
  static final _emailController = TextEditingController();
  static final _passwordController = TextEditingController();
  bool eyeToggle = true;
  bool eyeToggle2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formReg,
            child: Column(
              children: [
                Container(
                  height: 140,
                  padding: EdgeInsets.all(30),
                  child: Row(
                    children: [
                    FloatingActionButton(
                      child: Icon(Icons.arrow_back),
                      backgroundColor: Colors.amber,
                      onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                    })
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/pokemon-go.jpeg"),
                  radius: 60,
                ),
                Padding(padding: EdgeInsets.all(10)
                ),
                Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                Container(
                  width: 380,
                  height: 80,
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.name,
                    controller: _userController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter your name"
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter your name";
                      }else if(value.length < 6){
                        return "Name must be atleast 6 characters";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 380,
                  height: 80,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter your email"
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please enter your email";
                      }else if(!value.contains("@") || !value.contains(".")){
                        return "Please enter a valid email address";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 380,
                  height: 80,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    obscureText: eyeToggle,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter your password",
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            eyeToggle = !eyeToggle;
                          });
                        },
                        child: Icon(
                            eyeToggle ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please enter your password";
                      }else if(value.length <6){
                        "Password must be atleast 6 characters";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 380,
                  height: 130,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: eyeToggle2,
                    decoration: InputDecoration(
                      labelText: "Re-Password",
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Re-Enter your password",
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            eyeToggle2 = !eyeToggle2;
                          });
                        },
                        child: Icon(
                            eyeToggle2 ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please re-enter your password";
                      }else if(value.length <6){
                        "Password must be atleast 6 characters";
                      }else if(value != _passwordController.text){
                        return "Passwors must be the same";
                      }
                      return null;
                    },
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(_formReg.currentState!.validate()){
                      Navigator.push(context, 
    MaterialPageRoute(builder: (context) => DashboardPage(nama: _userController.text)));
                      }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                        ),
                      ),
                )
                )
            ]),
          ),
        ),
      ),
    );
  }
}