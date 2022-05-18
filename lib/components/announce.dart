import 'package:flutter/material.dart';

class Announce extends StatelessWidget {
  const Announce({Key? key}) : super(key: key);
  final Color mainColor = const Color(0xffF3996C);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 1.0,
      shadowColor: Colors.yellow,
      child: Container(
        height: 400.0,
        width: 550.0,
        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10, 10.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
        child: RichText(
          //softWrap: true,
          maxLines: 15,
          text: TextSpan(
              // style: DefaultTextStyle.of(context).style,

              children: <TextSpan>[
                const TextSpan(
                  text: "Կոմիքսների շարքը \n",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 7.5,
                    fontWeight: FontWeight.bold,
                    //decoration: TextDecoration.underline,
                    fontSize: 14.0,
                  ),
                ),
                TextSpan(
                  children: [
                    TextSpan(
                        text: "\n 1. Շատփողյանի Ոդիսականը \n",
                        style: TextStyle(
                            color: mainColor,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                    const TextSpan(
                      text:
                          "\nԵռանդուն էր Շատփողյանը, երբ պետք էր կանխվաճար ստանալ,"
                          "\n և երբ պետք էր տվյալները պահել մի table-ում։ "
                          "Դանդաղում էր, երբ պետք էր սովորել։ Ճանաչեցի՞ք նրան, \n"
                          "ուրեմն պատվիրեք և կարդացեք «Շատփողյանի ոդիսականը» ամսագիրը։\n",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0,
                        //decoration: TextDecoration.underline,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                TextSpan(children: [
                  TextSpan(
                      text: "\n 2. Խելացի խոզուկ \n",
                      style: TextStyle(
                          color: mainColor,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  const TextSpan(
                      text:
                          "\n Ունե՞ք այսպիսի խելացի և թափթված գործընկեր, ուղղակի NULL հիգիենայով։ "
                          "\n Բայց միևնույն է, աշխատանքում բոլորիս հույսը միշտ նա է՝ Խելացի Խոզուկը։ Ճանաչեցի՞ք նրան, \n"
                          "\nուրեմն պատվիրեք և կարդացեք «Dolorem ipsum, սիրելի՛ Խոզուկ» ամսագիրը։ \n",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontSize: 12.0)),
                ]),
                TextSpan(
                    text: "\n 3. Մանեկներն ու Հեղույսները \n",
                    style: TextStyle(
                        color: mainColor,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0)),
              ]),
          //overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
