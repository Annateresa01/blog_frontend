import 'package:blogapp/blogs/newuser.dart';
import 'package:flutter/material.dart';

class blog extends StatefulWidget {
  const blog({super.key});

  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  void login()async
  {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            TextField(
              controller: n1,
              decoration: InputDecoration(
              labelText: "EmailId",
              border: OutlineInputBorder()
            ),),
            SizedBox(height: 30,),
            TextField(
              controller: n2,
              decoration: InputDecoration(
                labelText: "Paasword",
                border: OutlineInputBorder()
            ),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: login , child: Text("Login")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()
                {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Newuser()));
                }, child: Text("New User "))
          ],
        ),
      ),
    );
  }
}
