import 'package:blogapp/blogs/blog.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(blogapp());
}
class blogapp extends StatelessWidget {
  const blogapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: blog(),
    );
  }
}
