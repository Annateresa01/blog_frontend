import 'package:flutter/material.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(decoration: InputDecoration(
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()
              {

              }, child: Text("POST")),
            ],
          ),
        ),
      ),
    );
  }
}
