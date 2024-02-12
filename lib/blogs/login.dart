import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
                  {

                  }, child: Text("ADD POST")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("VIEW POST")),
            ],
          ),
        ),
      ),
    );
  }
}
