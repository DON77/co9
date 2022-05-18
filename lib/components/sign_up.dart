import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({openModal, mainColor, Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Function? openModal;
  Color? mainColor = const Color(0xffc25c7e);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 1.0,
      shadowColor: Colors.yellow,
      child: Container(
        height: 200.0,
        width: 350.0,
        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
        child: RichText(
          softWrap: true,
          maxLines: 15,
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Բարի Գալ՝ուստ,",
              style: TextStyle(
                color: mainColor,
                letterSpacing: 10.0,
              ),
            ),
            TextSpan(
              text: "\nապագա Քոworkեր,\n",
              style: TextStyle(
                  color: mainColor,
                  letterSpacing: 7.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            TextSpan(
              text: "Եթե ձեռք ես բերել  մուտքի տոմս,\n ապա \n ԱՅՍՏԵՂ ",
              recognizer: TapGestureRecognizer()
                ..onTap = openModal as GestureTapCallback?,
              style: TextStyle(
                  color: mainColor,
                  letterSpacing: 7.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ]),
        ),
      ),
    );
  }
}
