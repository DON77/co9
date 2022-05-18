import 'package:co9/components/about_card.dart';
import 'package:co9/components/announce.dart';
import 'package:co9/components/sign_in.dart';
import 'package:co9/components/sign_up.dart';
import 'package:flutter/material.dart';

class Co9App extends StatelessWidget {
  const Co9App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'co9',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, //,
        // fontFamily: ArialAm),
      ),
      home: const MyHomePage(
        title: 'Բարի գալուստ \n Co9',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _shown = false;
  int _index = 0;
  List<Widget> items = [
    const AboutCard(),
    const Announce(),
    const SignUp(),
    SignIn(),
  ];
  final Color _magenta = const Color(0xffc25c7e);
  final Color _orange = const Color(0xffF3996C);
  final Color _blue = const Color(0xff368FA0);
  //Color black = const Color(0xff000000);

  void _openModal() {
    setState(() {
      _shown = !_shown;
    });
    _slideUp();
  }

  void _slideUp() {
    setState(() {
      if (_index < items.length - 1) {
        _index++;
      } else {
        _index = 0;
      }
    });
  }

  void _slideDown() {
    setState(() {
      if (_index > 1) {
        _index--;
      } else {
        _index = items.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('logo.png'),
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black26,
      ),
      body: Center(
        child: Container(
          width: 900,
          height: 1080.0,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("background.gif"),
              fit: BoxFit.fill,
            ),
          ),
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 1200),
              switchInCurve: Curves.bounceInOut,
              switchOutCurve: Curves.easeInOutSine,
              child: items[_index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openModal,
        tooltip: 'Մուտք',
        backgroundColor: _magenta,
        child: const Icon(Icons.login),
      ),

      //bottomNavigationBar: Bottom,// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
