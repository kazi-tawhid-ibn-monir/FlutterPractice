import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Ostad App"),
        centerTitle: true,
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        print("Button Pressed");
      },label: Text("Add New"),),
    );
  }
}
