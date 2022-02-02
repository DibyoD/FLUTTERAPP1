import 'package:flutter/material.dart';
import 'package:flutter_app1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change = false;
  final _formKey = GlobalKey<FormState>();

  toHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        change = false;
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
                  "assets/images/hey_img.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Username";
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          //obscuringCharacter: "*",
                          decoration: const InputDecoration(
                              labelText: "Password",
                              hintText: "Enter Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Password";
                            } else if (value.length < 6) {
                              return "Password length should be at least 6";
                            }
                          }),
                      const SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(change ? 50 : 7),
                        child: InkWell(
                          splashColor: Colors.purple.shade200,
                          borderRadius: BorderRadius.circular(7),
                          onTap: () => toHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: change ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: change
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      )

                      /*ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: const Text("Login"),
                        style: TextButton.styleFrom(
                            minimumSize: const Size(120, 40)),
                      )*/
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
