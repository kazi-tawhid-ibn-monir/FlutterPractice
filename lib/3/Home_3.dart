import 'package:flutter/material.dart';

class Home_3 extends StatefulWidget {
  const Home_3({super.key});

  @override
  State<Home_3> createState() => _Home_3State();
}

class _Home_3State extends State<Home_3> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text('Home 3'),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.lime,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Name',
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Name',
                      labelText: 'Last Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Enter Your E-mail',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      helperText: 'use-8-characters',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              ElevatedButton(onPressed: () {
                print(nameController.text);
                print(lastNameController.text);
                print(emailController.text);
                print(passwordController.text);
              }, child: Text('Submit')),
              ElevatedButton(onPressed: () {
                nameController.clear();
                lastNameController.clear();
                emailController.clear();
                passwordController.clear();
              }, child: Text('Clear')),
            ],
          ),
        ),
      ),
    );
  }
}

