import 'package:flutter/material.dart';
import 'package:co9/helpers/email_validator.dart';

class EmailField extends StatelessWidget {

  final TextEditingController? emailController;

  const EmailField({Key? key, this.emailController}):super(key: key);
  //Color(0xffc25c7e);

  final InputDecoration decoratedInput = const InputDecoration(
    labelText: 'Email*',
    hintText: 'Enter your email',
    labelStyle: TextStyle(color:  Color(0xff88BDCD)),
    iconColor: Color(0xffc25c7e),
    //fillColor: Color(0xffc25c7e),
    enabledBorder:UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff88BDCD)),
      borderRadius: BorderRadius.only(),

    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFD45130)),
      borderRadius: BorderRadius.only(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff88BDCD),

      controller: emailController,
      //textAlign: TextAlign.center,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: decoratedInput,

      validator: (value) {
        String? _validatedEmail = validateEmail(value!);
        return _validatedEmail;
      },
      onSaved: (value) => value,
      onChanged: (value){},
    );
  }
}
