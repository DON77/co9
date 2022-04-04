import 'package:flutter/material.dart';
import 'package:co9/models/Users.dart';
import 'package:co9/components/password_field.dart';
import 'package:co9/components/email_field.dart';
import 'package:co9/services/create_user.dart';

class SignUpForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final User user =  User();
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController =  TextEditingController();

  SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue,
      child: SizedBox(
        width: 300,
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  EmailField(
                    emailController: emailController,
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  PasswordField(
                    passwordController: passwordController,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff88BDCD)),
                    ),


                    onPressed: () {
                      var _validated = _formKey.currentState?.validate();
                      if (_validated == true) {
                        user.email = emailController?.text;
                        user.password = passwordController?.text;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const  SnackBar(content: Text('Processing Data')));
                        CreateUser instance =
                            CreateUser(email: user.email.toString(), password: user.password.toString());
                        instance.saveUser();
                      }
                    },
                    child: const Text(
                        'Գրանցել Ձեր օրինակը',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
