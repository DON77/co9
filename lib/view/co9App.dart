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
        title: 'Բարի գալուստ Քոworkerներ...',
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
  void _openModal() {
    setState(() {
      _shown = !_shown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor:magenta,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('co9.png'),
            _shown ? Center(child: SignUpForm()) : const SizedBox(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _openModal,
        tooltip: 'Register',
        backgroundColor: magenta,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
