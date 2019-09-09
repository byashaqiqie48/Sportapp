import 'package:detail_app_flutter/main.dart';
import 'package:flutter/material.dart';


class DetailItem extends StatelessWidget{
  final ItemRaket dataRaket;

  const DetailItem({Key key, this.dataRaket}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(
          title: Text("Detail"),
        ),
            body: Center(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image(
                          image: NetworkImage(dataRaket.img),
                        ),
                        Text(dataRaket.title),
                      ],
                    )
                  ],
                ),
              ) ,
            )
        )
    );
  }
}