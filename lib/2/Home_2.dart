import 'package:flutter/material.dart';

class Home_2 extends StatefulWidget {
  const Home_2({super.key});
  @override
  State<Home_2> createState() => _Home_2State();
}

class _Home_2State extends State<Home_2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime.shade300,
        title: Text(
          'Welcome To Home_2',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, Colors.limeAccent],
                ),
              ),
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
                  ElevatedButton(
                      onPressed: () {
                        String FullName =
                            nameController.text + " " + lastNameController.text;
                        print("Full Name: $FullName");
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      child: Text("Submit"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
