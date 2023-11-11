import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(home: splash(),));
}
class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration:BoxDecoration(
         //    image: DecorationImage(
         //  fit: BoxFit.cover,
         // image: NetworkImage('https://images.unsplash.com/photo-1566489564594-f2163930c034?auto=format&fit=crop&q=80&w=1965&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'))) ,
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.deepOrange,
          Colors.black,
          Colors.lightGreen

        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.dark_mode,size:100,color: Colors.white,),
              Image(image: AssetImage('assets/icons/black-cat.png'),height: 100,width: 100,),
               Text ('Cat',
                 // style: TextStyle(
                 //     fontSize: 30,
                 //     color: Colors.white,
                 //     fontWeight: FontWeight.bold),
                 style: GoogleFonts.kenia(
                   fontSize: 30,
                   color: Colors.lightGreenAccent,
                   fontWeight: FontWeight.bold
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
