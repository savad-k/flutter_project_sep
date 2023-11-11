import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_sep/home.dart';
void main() {
  runApp(MaterialApp(home: Stateful_Reg()));
}

class Stateful_Reg extends StatefulWidget{
  @override
  State<Stateful_Reg> createState() => _Stateful_RegState();
}

class _Stateful_RegState extends State<Stateful_Reg> {
  final namecntrl = TextEditingController();
  final passcntrl = TextEditingController();
  final validkey = GlobalKey<FormState>();
  String? pwd;
  bool showpwd = true;
  bool showpwd1 = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(15),
          child: Form(
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Registration page",style: TextStyle(fontSize:35 ),
                ),
                const SizedBox(height: 15,),
                TextFormField(
                  controller: namecntrl,
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
                  obscureText: showpwd,
                  obscuringCharacter: '*',
                  controller: passcntrl,
                  validator: (Password){
                    pwd = Password;
                    if(Password!.isEmpty || Password.length < 8){
                      return "password must not be empty or length should be greater than 8";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpwd == true){
                          showpwd = false;
                        }else{
                          showpwd = true;
                        }

                      });
                    }, icon: Icon(showpwd == true? Icons.visibility_off_sharp
                    :Icons.visibility)),
                      border: OutlineInputBorder(),
                      hintText: "password"),
                ),
                const SizedBox(height: 15,),
                TextFormField(
                  obscureText: showpwd1,
                  obscuringCharacter: "*",
                  validator: (ConfirmPassword){
                    if(ConfirmPassword!.isEmpty || pwd!=ConfirmPassword){
                      return "password must not be empty or length should be greater than 8";
                    }
                  },
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpwd1 == true){
                            showpwd1 = false;
                          }else{
                            showpwd1 = true;
                          }

                        });
                      }, icon: Icon(showpwd1 == true? Icons.visibility_off_sharp
                          :Icons.visibility)),
                      border: OutlineInputBorder(),
                      hintText: "Confirm password"),
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
                  child: const Text("Register"),
                ),
                TextButton(onPressed: (){}, child: const Text("Not a User? Register Here!!"))
              ],
            ),
          ),),
      ),
    );
  }
}
