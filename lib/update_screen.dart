import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {

  String uID;
  String uName;
  String uEmail;
  String uAge;
  String uPassword;


  UpdateScreen({required this.uID, required this.uName, required this.uEmail,required this.uAge, required this.uPassword});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {

  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userAge = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Insert Data"),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: userName,
                decoration: InputDecoration(
                    labelText: "Enter Your Name",
                    suffixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: userEmail,
                decoration: InputDecoration(
                    labelText: "Enter Your Email", suffixIcon: Icon(Icons.key)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: userAge,
                decoration: InputDecoration(
                    labelText: "Enter Your Age", suffixIcon: Icon(Icons.key)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: userPassword,
                decoration: InputDecoration(
                    labelText: "Enter Your Password",
                    suffixIcon: Icon(Icons.key)),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text("Insert"))
            ],
          ),
        ),
      ),
    );
  }
}
