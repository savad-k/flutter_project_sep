import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registration',
                style: GoogleFonts.saira(
                    fontSize: 50,fontWeight: FontWeight.bold),
              ),
              Text(
                "Enter the datas to SignUp",
                style: GoogleFonts.satisfy(
                    fontSize: 20,fontWeight: FontWeight.bold
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text('Name'),
                      prefixIcon: Icon(Icons.person),
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('UserName'),
                    prefixIcon: Icon(Icons.person),
                    hintText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
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
                Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Confirm password"),
                    prefixIcon: Icon(Icons.password),
                    hintText: "Confirm password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                ),
              ),
              MaterialButton(
                height: 50,
                minWidth: 170,
                onPressed: () {},
                color: Colors.lightGreen,
                shape: const StadiumBorder(),
                child: const Text("Login"),
              ),
              TextButton(onPressed: (){},
                  child: RichText(text: const TextSpan(
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
      ),
    );
  }
}