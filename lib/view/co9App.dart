
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
        primarySwatch: Colors.purple,
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
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
