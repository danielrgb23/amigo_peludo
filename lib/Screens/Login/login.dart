import 'package:amigo_peludo/components/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:validatorless/validatorless.dart';
import 'package:amigo_peludo/Screens/home/HomeScreen.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _showPassword = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: ThemeColors.primary),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.pets,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          validator: Validatorless.multiple([
                            Validatorless.required("Informe seu e-mail"),
                            Validatorless.email("E-mail inválido"),
                          ]),
                          decoration: const InputDecoration(
                            labelText: "Email",
                            hintText: "abcd@abcd.com",
                            hintStyle:
                                TextStyle(fontSize: 12, color: Colors.black),
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(220, 48, 47, 47),
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                          controller: _email,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          validator: Validatorless.multiple([
                            Validatorless.required("A senha é obrigatória"),
                          ]),
                          decoration: InputDecoration(
                            labelText: "Senha",
                            hintText: "*******",
                            hintStyle: const TextStyle(
                                fontSize: 12, color: Colors.black),
                            labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            suffixIcon: GestureDetector(
                                child: Icon(
                                  _showPassword == false
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color.fromARGB(255, 48, 47, 47),
                                ),
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                }),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(220, 248, 248, 248),
                              ),
                            ),
                          ),
                          obscureText: _showPassword == false ? true : false,
                          onChanged: (value) {},
                          controller: _password,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              child: const Text(
                                "Esqueci a senha",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home(page: 2)));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: ThemeColors.blue,
                          minimumSize: Size(200, 50),
                        ),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.facebook),
                              label: Text('Login com Facebook'),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.mail),
                              label: Text('Login com Gmail'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
