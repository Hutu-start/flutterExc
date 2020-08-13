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
      body: FQHomeContent(),
    );
  }
}

class FQHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FQHomeProductItem('第一个', '哈哈哈哈哈哈哈哈',
            'https://i0.hdslb.com/bfs/archive/e62b6b095ef38dfb742687f11e4b570dde420b5d.png'),
        SizedBox(height: 12),
        FQHomeProductItem('第二个', '红红火火恍恍惚惚',
            'https://egame.gtimg.cn/club/pgg_pcweb/v2/img/befe0d6.png?max_age=31536000'),
        SizedBox(height: 12),
        FQHomeProductItem('第三个', '嘻嘻嘻嘻嘻嘻嘻',
            'https://tva1.sinaimg.cn/mw690/98fe75a2ly1g13jcubkr3j20go4xw4qq.jpg'),
      ],
    );
  }
}

class FQHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;
  final style1 = TextStyle(fontSize: 25, color: Colors.green);
  final style2 = TextStyle(fontSize: 20, color: Colors.amberAccent);

  FQHomeProductItem(this.title, this.desc, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration:
          BoxDecoration(border: Border.all(width: 2, color: Colors.purple)),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: style1,
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            desc,
            style: style2,
          ),
          Image.network(imageUrl)
        ],
      ),
    );
  }
}
