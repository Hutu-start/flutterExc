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

class FQHomeContent extends StatefulWidget {
  final String message;

  FQHomeContent(this.message);

  @override
  _FQHomeContentState createState() => _FQHomeContentState();
}

/**
 * 为什么Flutter在设计的时候StatefulWidget的build方法放在State中
 *  1.build出来的Widget是需要依赖State中的变量（状态/数据）
 *  2.在Flutter的运行过程中：
 *    Widget是不断的销毁和创建的
 *    当我么自己的状态发生改变时，并不希望重新生成一个新的State
 */
class _FQHomeContentState extends State<FQHomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text(
            '当前计数：$_counter',
            style: TextStyle(fontSize: 30),
          ),
          Text('这是传过来的：${widget.message}')
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            '-',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          color: Colors.purple,
          onPressed: () {
            this.setState(() {
              _counter--;
            });
          },
        ),
        RaisedButton(
          child: Text(
            '+',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          color: Colors.green,
          onPressed: () {
            this.setState(() {
              this._counter++;
            });
          },
        )
      ],
    );
  }
}
