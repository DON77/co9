import 'package:co9/components/email_field.dart';
import 'package:co9/components/password_field.dart';
import 'package:co9/models/Users.dart';
import 'package:co9/services/create_user.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final User user = User();
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();

  SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.yellow,
      color: Colors.transparent,
      elevation: 1.5,
      child: SizedBox(
        width: 250,
        height: 280,
        child: Column(
          children: [
            Text(
              '\n \n Քոworker ? Login : 404 ;\n',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      EmailField(
                        emailController: emailController,
                      ),
                      // const Padding(padding: EdgeInsets.all(7.0)),
                      PasswordField(
                        passwordController: passwordController,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0x0088BDCD)),
                        ),
                        onPressed: () {
                          var _validated = _formKey.currentState?.validate();
                          if (_validated == true) {
                            user.email = emailController?.text;
                            user.password = passwordController?.text;
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')));
                            CreateUser instance = CreateUser(
                                email: user.email.toString(),
                                password: user.password.toString());
                            instance.saveUser();
                          }
                        },
                        child: const Text('Fingerprint',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
