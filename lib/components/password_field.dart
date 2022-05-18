import 'package:co9/helpers/password_validator.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();

  final TextEditingController? passwordController;

  const PasswordField({Key? key, this.passwordController}) : super(key: key);
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordVisible = false;
  Color magenta = const Color(0xffc25c7e);
  Color blue = const Color(0xffffffff); //Color(0xff88BDCD);
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
      cursorColor: blue,
      decoration: InputDecoration(
        labelText: 'Password*',
        labelStyle: TextStyle(color: blue),

        iconColor: blue,
        hintText: 'at least 6',
        focusColor: magenta,
        hoverColor: magenta,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: blue),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD45130)),
        ),
        // border:const UnderlineInputBorder(
        //
        //   borderRadius: BorderRadius.only(),
        //
        // ),
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: blue, //Theme.of(context).primaryColorDark,
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
