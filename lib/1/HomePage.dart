import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: Text('Home Page',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.tealAccent, Colors.white])),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.greenAccent.shade100,
                          filled: true,
                          labelText: 'Enter your name',
                          labelStyle: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.greenAccent.shade100,
                          filled: true,
                          labelText: 'Enter your name',
                          labelStyle: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('Submit'))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
