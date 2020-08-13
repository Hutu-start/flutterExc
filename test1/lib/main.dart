import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FQHomePage());
  }
}

class FQHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: FQHomeContent('啦啦啦 body传过来的'),
    );
  }
}
class FQHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
