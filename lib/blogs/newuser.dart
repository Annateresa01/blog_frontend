import 'package:blogapp/services/blogapiser.dart';
import 'package:flutter/material.dart';

class Newuser extends StatefulWidget {
  const Newuser({super.key});

  @override
  State<Newuser> createState() => _NewuserState();
}

class _NewuserState extends State<Newuser> {
  TextEditingController n3=new TextEditingController();
  TextEditingController n4=new TextEditingController();
  TextEditingController n5=new TextEditingController();
  TextEditingController n6=new TextEditingController();
  TextEditingController n7=new TextEditingController();
  TextEditingController n8=new TextEditingController();
  TextEditingController n9=new TextEditingController();

  void register() async
  {
    final response=await blogapiser().sentdata(n3.text, n4.text, n5.text, n6.text, n7.text, n8.text, n9.text);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 30,),
                TextField(
                  controller: n3,
                  decoration: InputDecoration(
                    labelText: "name",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: n4,
                  decoration: InputDecoration(
                    labelText: "age",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: n5,
                  decoration: InputDecoration(
                    labelText: "mobNo",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: n6,
                  decoration: InputDecoration(
                    labelText: "adrs",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: n7,
                  decoration: InputDecoration(
                    labelText: "pincode",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: n8,
                  decoration: InputDecoration(
                    labelText: "EmailId",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                TextField(
                  controller: n9,
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder()
                ),),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: register, child: Text("Register")),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: ()
                    {
          Navigator.pop(context);
                    }, child: Text("BACK"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
