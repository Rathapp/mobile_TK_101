
import 'package:flutter/material.dart';

import 'home_page.dart';

class LogIn extends StatefulWidget {

  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // const LogIn({super.key});
 final TextEditingController _email = TextEditingController();

 final TextEditingController _password = TextEditingController();

bool _showpassword = true;
bool tt = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight(500),fontSize: 18 ),
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email",
          
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      )

                  ),
          
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    style: TextStyle(color: Colors.pink,fontWeight: FontWeight(500),fontSize: 18 ),
                    controller: _password,
                    obscureText: _showpassword,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: (){
          
                          setState(() {
                            _showpassword= !_showpassword;
                          });
                        },
                          child: _showpassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Password",

                  )
                  ),
                  SizedBox(height: 20,),
                  // CircularProgressIndicator(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          // print("Email: ${_email.text}");
                          // print("Password: ${_password.text}");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                        },
                      style: ElevatedButton.styleFrom(
          
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
          
                        )
          
                    ),
                        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)
                    ),
                  )
                ],
          
                    ),
            ),
          ),
        ),
      )
    );
  }
}
