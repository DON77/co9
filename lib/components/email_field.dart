import 'package:co9/helpers/journal_number_validator.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController? emailController;

  const EmailField({Key? key, this.emailController}) : super(key: key);
  //Color(0xffc25c7e);

  final InputDecoration decoratedInput = const InputDecoration(
    labelText: 'Քոworker_id',
    hintText: 'N0000',
    labelStyle: TextStyle(color: Color(0xffffffff)),
    iconColor: Color(0xffc25c7e),
    //fillColor: Color(0xffc25c7e),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffffffff)),
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
      cursorColor: const Color(0xffffffff),

      controller: emailController,
      //textAlign: TextAlign.center,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: decoratedInput,

      validator: (value) {
        String? _validatedEmail = validateJournal(value!);
        return _validatedEmail;
      },
      onSaved: (value) => value,
      onChanged: (value) {},
    );
  }
}
