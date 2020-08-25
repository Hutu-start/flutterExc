import 'package:flutter/material.dart';

/**
 * 生命周期
 * 1.初始化数组
 * 2.发送网络请求
 * 3.进行一些事件的监听
 * 4.管理内存，一些定时器 控制器 手动进行销毁
 */
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FQHomePage());
  }
}

class FQHomePage extends StatefulWidget {
  @override
  _FQHomePageState createState() => _FQHomePageState();
}

class _FQHomePageState extends State<FQHomePage> {

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Column(
        children: <Widget>[FQHomeContent()],
      ),
      floatingActionButton: RaisedButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
          });
        },
      ),
    );
  }
}

//StatelessWidget的生命周期
//class FQHomeContent extends StatelessWidget {
//  final String message;
//
//  FQHomeContent(this.message) {
//    print('构造函数被调用');
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    print('调用build方法');
//    return Text(message);
//  }
//}

//StatefulWidget的生命周期
class FQHomeContent extends StatefulWidget {
  FQHomeContent() {
    print('1.调用FQHomeContent的constructor的方法');
  }

  @override
  _FQHomeContentState createState() {
    print('2.调用FQHomeContent的createState的方法');
    return _FQHomeContentState();
  }
}

class _FQHomeContentState extends State<FQHomeContent> {
  int _count = 0;

  _FQHomeContentState() {
    print('3.调用_FQHomeContent的constructor的方法');
  }

  @override
  void initState() {
    // 调用: 这里是必须调用super
    super.initState();
    print('4.调用_FQHomeContent的initState的方法');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('调用_FQHomeContent的didChangeDependencies的方法');
  }

  @override
  void didUpdateWidget(FQHomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    print('5.调用_FQHomeContent的build的方法');
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            this.setState(() {
              this._count++;
            });
          },
        ),
        Text('$_count')
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('6.调用_FQHomeContent的dispose的方法');
  }
}
