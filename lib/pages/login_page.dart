import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // TextEditingController keyController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool validationComplete = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Image.asset("Asset/Image/login_photo.png"),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value! == "sushil") {
                      return null;
                    }
                    return "Wrong entry";
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("User Name"),
                      hintText: "Input your user name"),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value! == "@2025asan") {
                      return null;
                    }
                    return "Wrong enrty";
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        setState(() {
                          validationComplete = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, "/home");
                        setState(() {
                          validationComplete = false;
                        });
                      }
                    },
                    child: validationComplete
                        ? const Icon(Icons.check)
                        : const Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
