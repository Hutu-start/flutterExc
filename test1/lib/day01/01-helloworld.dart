import 'package:flutter/material.dart';

main(){
  //1.runApp函数
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          centerTitle:true,
          title: Text(
            '第一个flutter程序',
            style: TextStyle(fontSize: 30,),
          ),
        ),
        body: Center(
          child:Text(
            'Hello world',
            style: TextStyle(
                fontSize: 40,
                color: Colors.red
            ),
          ),
        ),
      )
    )
  );
}