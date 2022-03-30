import 'package:flutter/material.dart';
import 'package:co9/helpers/email_validator.dart';

class EmailField extends StatelessWidget {

  final TextEditingController? emailController;

  EmailField({Key? key, this.emailController}):super(key: key);

  final InputDecoration decoratedInput = InputDecoration(
    labelText: 'Email*',
    hintText: 'Enter your email',
    fillColor: Colors.grey,
    border:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      textAlign: TextAlign.center,
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
