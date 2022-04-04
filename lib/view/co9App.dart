import "package:flutter/material.dart" ;
import 'package:co9/pages/signup_form.dart';
class Co9App extends StatelessWidget {
  const Co9App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'co9',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,//,
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
  Color magenta =const Color(0xffc25c7e);
  Color orange = const Color(0xffF3996C);
  Color black = const Color(0xff000000);
  void _openModal() {
    setState(() {
      _shown = !_shown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('logo.png'),
        title: Text(widget.title,textAlign: TextAlign.center,),
        backgroundColor:black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("background.gif"),
            fit: BoxFit.fill,
          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('co9.png'),
            SizedBox(
              //mainAxisAlignment: MainAxisAlignment.center,
              child: _shown ? Center(child: SignUpForm()) : const SizedBox(),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _openModal,
        tooltip: 'Register',
        backgroundColor: magenta,
        child: const Icon(Icons.add),
      ),

      //bottomNavigationBar: Buttom,// This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
