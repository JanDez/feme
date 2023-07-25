// ignore_for_file: avoid_print
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': 'eve.holt@reqres.in', 'password': 'cityslicka'});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 65),
              child: Center(
                child: SizedBox(
                    width: 300.0,
                    height: 170.0,
                    child: Image.asset('assets/images/femePNG.png')),
              ),
            ),
            const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 5.0),
                child: Text(
                  '¡Bienvenido de nuevo!',
                  style: TextStyle(
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                )),
            Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: emailController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      hintStyle: const TextStyle(fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF212121),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF107FC2),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    // validator: _model.emailControllerValidator.asValidator(context),
                  ),
                )),
            Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: SizedBox(
                  width: 300.0,
                  child: TextFormField(
                    controller: passwordController,
                    autofocus: true,
                    // obscureText: !_model.contrasenaVisibility,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      hintStyle: const TextStyle(fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF212121),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF107FC2),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      // suffixIcon: InkWell(
                      //   onTap: () => setState(
                      //     () => _model.contrasenaVisibility =
                      //         !_model.contrasenaVisibility,
                      //   ),
                      //   focusNode: FocusNode(skipTraversal: true),
                      //   child: Icon(
                      //     _model.contrasenaVisibility
                      //         ? Icons.visibility_outlined
                      //         : Icons.visibility_off_outlined,
                      //     color: const Color(0xFF757575),
                      //     size: 22.0,
                      //   ),
                      // ),
                    ),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    // validator: _model.contrasenaControllerValidator.asValidator(context),
                  ),
                )),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: const Color(0xFF262C9C),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextButton(
                onPressed: () {
                  context.pushNamed('home');
                },
                child: const Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'forgetPass',
                    );
                  },
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                        color: Color(0xFF107FC2), fontWeight: FontWeight.w800),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
