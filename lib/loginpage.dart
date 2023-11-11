import 'package:flutter/material.dart';
import 'package:flutter_project_sep/home.dart';
import 'package:flutter_project_sep/signupPage.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget {
String username ="admin";
String password ="savad123";
final user_controller = TextEditingController();
final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        elevation: 0,
      ),
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: GoogleFonts.saira(
                fontSize: 50,fontWeight: FontWeight.bold),
            ),
             Text(
                 "Welcome Back! Login With your Credentials!!",
               style: GoogleFonts.satisfy(
                 fontSize: 20,fontWeight: FontWeight.bold
               ),
             ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: user_controller,
                decoration: InputDecoration(
                  label: Text('email id'),
                  prefixIcon: Icon(Icons.person),
                  hintText: "email id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: InputDecoration(
                  label: Text("password"),
                  prefixIcon: Icon(Icons.password),
                  hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
              ),
            ),
            ),
            MaterialButton(
              height: 50,
              minWidth: 170,
              onPressed: () {
                if(username == user_controller.text && password == pass_controller.text){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                }
                user_controller.text = "";
                pass_controller.text = "";
              },
            color: Colors.lightGreen,
            child: Text("Login"),
            shape: StadiumBorder(),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
            },
                child: RichText(text: TextSpan(
              style:  TextStyle(
                color: Colors.black,
                fontSize: 15
              ) ,
              children: [
                TextSpan(text: "dont have an Account?"),
                TextSpan(text: "Signup!!",style: TextStyle(fontWeight: FontWeight.bold))
              ]
            ))
            )

          ],
        ),
      ),
    );
  }
}
