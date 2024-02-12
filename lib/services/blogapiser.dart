import 'dart:convert';
import 'package:blogapp/models/blogmodel.dart';

import 'package:http/http.dart'as http;
class blogapiser
{
  Future<dynamic> login(String n1,n2)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/blog/signin");

    var response=await client.post(apiurl,headers: <String,String>{
      "Content-Type": "application/Json;charset=UTF-8 "
    },body: jsonEncode(<String,String>{
      "emailid":n1,
      "password":n2
    }));
    if(response.statusCode == 200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("FAILED");

    }
  }




  Future<dynamic> sentdata(String n3,n4,n5,n6,n7,n8,n9)async
  {
    var client=http.Client();
    var apiurl=Uri.parse("http://localhost:3001/api/blog/user");

    var response=await client.post(apiurl,headers: <String,String>{
      "Content-Type": "application/Json;charset=UTF-8 "
    },body: jsonEncode(<String,String>
        {

        "name":n3,
        "age":n4,
        "mobno":n5,
        "adrs":n6,
        "pincode":n7,
        "emailid":n8,
        "password":n9

    }));
    if(response.statusCode == 200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("FAILED");

    }
  }
  }



