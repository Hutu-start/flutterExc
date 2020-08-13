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
          backgroundColor: Colors.green,
          centerTitle:true,
          title: Text(
            '第一个flutter程序',
            style: TextStyle(fontSize: 20,),
          ),
        ),
        body: FQContentBody()
    );
  }
}
// StatefulWidget: 继承自StatefulWidget的类（可以接收widget传过来的数据）/State的类(状态)

// Stateful不能定义状态-> 创建一个单独的类，这个类负责维护状态
class FQContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FQContentBodyState();
  }
}
class FQContentBodyState extends State<FQContentBody>{
  var flag = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: flag,
              onChanged: (value){
                setState(() {
                  flag = value;
                });
              },
            ),
            Text('哈哈哈',style: TextStyle(fontSize: 20),)
          ],
        )
    );
  }
}