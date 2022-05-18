import 'package:flutter/material.dart';

class AboutCard extends StatefulWidget {
  const AboutCard({Key? key, mainColor}) : super(key: key);

  @override
  State<AboutCard> createState() => _AboutCardState();
}

class _AboutCardState extends State<AboutCard> {
  Color? mainColor = Colors.white;
  final Color _blue = const Color(0xff368FA0);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 1.0,
      shadowColor: Colors.yellow,
      child: Container(
        width: 550,
        height: 400,
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 10),
        child: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: 'Մեր մասին \n',
                style: TextStyle(
                  color: _blue,
                  fontSize: 18,
                  letterSpacing: 10.0,
                )),
            TextSpan(
                text:
                    "Աշխատանքում մարդկանց բնավորությունը, հմտությունները, արդյունավետությունը նրանց «կնքում են» նոր անուններով։ Եթե ձեր Քոworkerներին մտքում անուն եք դրել, նշանակում է՝ արդեն լավ եք ճանաչում նրանց։ Մենք նույնպես։ Այս նախագիծը ստեղծվել է երկարատև փորձի ու շփման արդյունքում։ Մենք այդ փորձը վերածեցինք պատմությունների՝ ներկայացնելով Քոworkerներին։"
                    "Կոմիքսների այս շարքը պատմում է ՏՏ ոլորտի ջանասերների, մեծամիտների, ծույլերի, նվիրյալների և այլ Քոworkerների մասին։ Մեր կոմիքսները ճիշտ է՝ ընդհանրացնող են, բայց նաև շատ  մարդկային են՝ շատփողյանները, խելացի խոզուկները, մանեկներն ու հեղույսերը, ինտերն պերսպեկտիվաները մեր կողքին են, աշխատում են մեզ հետ։"
                    "Այստեղ, հավանաբար կճանաչեք Ձեզ, կամ Ձեր գործընկերոջը։ Անհանգստանալու կարիք չկա։ Ուղղակի պետք է լիաթոք ծիծաղել ու սպասել հաջորդ ամսագրին։ Քոworkerներ նախագիծը բարձրորակ բովանդակությամբ և պատկերներով պատմությունները պարբերաբար կհասցնի Ձեզ։ Մենք սպասում ենք նաև ավելիին՝ Քոworkerները կնպաստեն Հայաստանում ՏՏ ոլորտի զարգացմանը և աշխատանքային մշակույթի բարելավմանը։",
                style: TextStyle(color: mainColor)),
          ]),
        ),
      ),
    );
  }
}
