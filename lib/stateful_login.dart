import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_sep/home.dart';
void main() {
  runApp(MaterialApp(home: Stateful_Login(),));
}
  class Stateful_Login extends StatefulWidget {


  @override
  State<StatefulWidget> createState()=> _Stateful_LoginState();
  }

  class _Stateful_LoginState extends State<Stateful_Login> {
  final validkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text("Login Page"),
  ),
  body: Center(
  child: Padding(padding: const EdgeInsets.all(15),
  child: Form(
    key: validkey,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text("Login page",style: TextStyle(fontSize:35 ),
    ),
    const SizedBox(height: 15,),
    TextFormField(
      validator: (email){
        if(email!.isEmpty || !email.contains("@") || !email.contains("gmail.com")) {
          return "invalid email";
        }
      } ,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    hintText: "User name"
    ),
    ),
    const SizedBox(height: 15,),
    TextFormField(
      validator: (Password){
        if(Password!.isEmpty || Password.length < 8){
          return "password must not be empty or length should be greater than 8";
        }
      },
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    hintText: "password"),
    ),
    MaterialButton(onPressed: (){
      final valid = validkey.currentState!.validate();
      if(valid == true){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar
          (backgroundColor:  Colors.red,
            content: Text("Invalid Email/Password")));

      }

    },color: Colors.lightGreen,
    shape: const StadiumBorder(),
    child: const Text("Login"),
    ),
    TextButton(onPressed: (){}, child: const Text("Not a User? Register Here!!"))
    ],
    ),
  ),),
  ),
  );
  }
  }
