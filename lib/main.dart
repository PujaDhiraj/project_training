import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginPage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              /*  image: AssetImage('assets/bg4.JPG'), */
              image: AssetImage('assets/1.webp'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*  Container(
                child: Image.asset(
                  'assets/bg1.JPG',
                ),
              ), */

              /* Text("logo here"),
              Text("textfield Username here"),
              Text("textfield password here"),
              Text("Button here"), */
              Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                  bottom: 10,
                ),
                child: TextFormField(
                  controller: _usernameController,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Input Username',
                    hintStyle: TextStyle(
                      color: Colors.red,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                  bottom: 10,
                ),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Input Password',
                    hintStyle: TextStyle(
                      color: Colors.red,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    print('pressed the button');
                  },
                  child: Text('Forget Password'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  onPressed: () {
                    print('Username:' + _usernameController.text);
                    print('Password:' + _passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text('Press Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
