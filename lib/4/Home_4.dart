import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Form"),
      ),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5)),
                          hintText: "E-mail",
                          label: Text("Email")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Empty Email not allowed";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: password,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5)),
                          hintText: "Password",
                          label: Text("Password")),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Empty Password Not Allowed";
                        } else if (value.length < 6) {
                          return "Password must be 6 charechter";
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserInfo()));
                            }
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            email.clear();
                            password.clear();
                          },
                          child: Text(
                            "Clear",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Button Pressed");
        },
        label: Text("Add New"),
      ),
    );
  }
}

//--------------------------------------------------User page------------------------------------------------------

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Column(
        children: [
          Text(
            "This is my User page",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page1()));
                  },
                  child: Text(
                    "Next Page",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )))
        ],
      ),
    );
  }
}

//----------------------------------------------page-1----------------------------------------------------------

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page-1"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("This is my Page-1"),
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"))),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "Back To Home",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))),
        ],
      ),
    );
  }
}
