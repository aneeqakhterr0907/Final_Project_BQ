import 'package:flutter/material.dart';
import '../home_screens/global_vars.dart';
import 'homepage.dart';
import 'login_page.dart';


class screen1_a extends StatefulWidget {
  const screen1_a({super.key});

  @override
  State<screen1_a> createState() => _screen1_aState();
}

class _screen1_aState extends State<screen1_a> {
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
            Text('Signup',
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
                    MaterialPageRoute(builder: (context)=> screen1(),
                    ));
              },
              child:  Text('Already A User? Login',
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
