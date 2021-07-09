import 'package:flutter/material.dart';
import 'package:project_01/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changedButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
                // child: Text("fguyfgoefgefo"),
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 35.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User Name",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return " user name can not be empty";
                        } else
                          return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "User Password",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password not be empty";
                        } else if (value.length < 6) {
                          return " Password mus be more than 6 digits";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 50 : 9),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changedButton ? 50 : 130,
                          height: 50,
                          // color: Colors.deepPurple,
                          alignment: Alignment.center,
                          child: changedButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18.0),
                                ),
                          //     borderRadius:
                          //         BorderRadius.circular(changedButton ? 50 : 9)),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // Center(
      //   child: Text(
      //     "Login Pages",
      //     style: TextStyle(
      //       fontSize: 25.0,
      //       color: Colors.blue,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}
