import 'package:flutter/material.dart';
import 'package:co9/helpers/password_validator.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();

  final TextEditingController? passwordController;

  const PasswordField({Key? key,this.passwordController}):super(key:key);
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        labelText: 'Password*',
        hintText: 'Enter your password',
        fillColor: Colors.grey,
        border:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
      validator: (value) {
        String? _validatedPassword = validatePassword(value!);
        return _validatedPassword;
      },
    );
  }
}
