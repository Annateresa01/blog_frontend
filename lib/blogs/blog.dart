import 'package:blogapp/blogs/login.dart';
import 'package:blogapp/blogs/newuser.dart';
import 'package:blogapp/services/blogapiser.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
final response=await blogapiser().login(n1.text
    , n2.text);
if(response["status"] == "Success")
  {
    String userId=response["userdata"]["_id"].toString();

    print("Success"+userId);
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString("userId",userId);
    print("Success"+userId);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));

  }else if(response["status"]=="invalid emailid")
    {
      print("invalid emailid");

    }
else
  {
    print("error");

  }
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
