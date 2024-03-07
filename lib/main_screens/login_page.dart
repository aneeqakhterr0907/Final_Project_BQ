import 'package:fitnessapp/main_screens/homepage.dart';
import 'package:fitnessapp/main_screens/sign_up.dart';
import 'package:flutter/material.dart';

import '../home_screens/global_vars.dart';


class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
       color: Theme.of(context).canvasColor,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Login',
                style:
                TextStyle(fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
             SizedBox(height: 60,),
              TextField(
                onChanged: (value){
                  setState(() {
                    name=value;
                  });
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.amber,
                    weight: 500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.yellow,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Email",
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.amber,
                    weight: 500,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.yellow,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Password",
                  suffixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.amber,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 3,
                      color: Colors.yellow,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
             InkWell(
               onTap: (){
                 Navigator.pushReplacement(context,
                     MaterialPageRoute(builder: (context)=> screen1_a(),
                     ));
               },
               child:  Text('New Here? Sign Up',
                 style: TextStyle(
                   fontWeight: FontWeight.w600,
                   color: Colors.lightBlue,
                   fontSize: 16,
                 ),
               ),
             ),
              SizedBox(height: 20,),
             ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,MaterialPageRoute(
                      builder: (context) => screen2(),
                    ));
                  },
                  child: Text('Continue'),
                ),
            ],
          ),
      ),
    );
  }
}
