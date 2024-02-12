import 'package:blogapp/blogs/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  TextEditingController m1=new TextEditingController();
  
   void addpost()async{
    SharedPreferences prefer=await SharedPreferences.getInstance();
    prefer.getString("userId");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                controller: m1,
                decoration: InputDecoration(
                border: OutlineInputBorder()
              ),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: addpost, child: Text("POST")),
            ],
          ),
        ),
      ),
    );
  }
}
