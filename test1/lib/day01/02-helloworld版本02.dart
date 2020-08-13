import 'package:flutter/material.dart';

main()=>runApp(MyApp());

/**
 *Widget:
 * 有状态的Widget：StatefulWidget 在运行过程中有一些状态（data）需要改变
 * 无状态的Widget：StatelessWidget 内容是确定没有状态（data）的改变
 */

// 组件化 开发的思想
class MyApp extends StatelessWidget{
  // build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:FQHomePage()
    );
  }
}
class FQHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          centerTitle:true,
          title: Text(
            '第一个flutter程序',
            style: TextStyle(fontSize: 30,),
          ),
        ),
        body: FQContentBody()
    );
  }
}
class FQContentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(
        'Hello world啦啦啦',
        style: TextStyle(
            fontSize: 40,
            color: Colors.red
        ),
      ),
    );
  }
}