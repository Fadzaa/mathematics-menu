import 'package:flutter/material.dart';
import 'package:kalkulator/main.dart';

class loginMenu extends StatefulWidget {
  const loginMenu({Key? key}) : super(key: key);

  @override
  State<loginMenu> createState() => _loginMenuState();
}

class _loginMenuState extends State<loginMenu> {
  TextEditingController ctrusername = new TextEditingController();
  TextEditingController ctrpassword = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Menu")),
      body: Container(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //Image User Icon
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
              child: Image.asset('assets/user_icon3.png', height: 95, width: 95,),

            ),

            //Text Username
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text("Username", style: TextStyle(fontSize: 18), ),
            ),

            //Input Username Form Field
             Form(
              child: TextFormField(
                controller: ctrusername,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Username"
                ),
              ),
            ),

            //Text Password
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text("Password", style: TextStyle(fontSize: 18), ),
            ),
            Container(
              child: TextField(
                controller: ctrpassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Masukkan Password"
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    String userName = ctrusername.text;
                    String password = ctrpassword.text;
                    setState(() {
                      if(userName == 'admin' && password =='admin'){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SecondScreen()),
                        );
                      } else {
                        print('Tolong isi beberapa text');
                      }
                      return null;
                    });

                },

                    child: Text("Submit"))),
          ],
        ),
        ),
      ),
    );
  }
}
