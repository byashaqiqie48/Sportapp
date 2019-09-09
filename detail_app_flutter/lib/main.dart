import 'package:detail_app_flutter/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Sport App";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: GridView.count(
                crossAxisCount: 2,
                children: List.generate(data.length, (index) {
                  return Center(
                    child: dataRaketCard(DataRaket: data[index]),
                  );
                }))));
  }
}

class ItemRaket {
  final String img, pic, title;

  ItemRaket(this.img, this.pic, this.title);
}

List<ItemRaket> data = [
  ItemRaket(
      "https://ecs7.tokopedia.net/img/cache/700/product-1/2016/9/24/34170/34170_f3c891d7-301c-477d-b9a0-e2bbd341eb53.jpg",
      "1",
      "Drive115"),
  ItemRaket(
      "https://ecs7.tokopedia.net/img/cache/700/product-1/2016/9/16/8159/8159_2b319d8a-5923-4d7e-b4d3-dbe458924323.jpg",
      "2",
      "Wilson Ultra"),
  ItemRaket(
      "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//93/MTA-2253657/yonex_yonex-vcore-sv-lite-raket-tenis--270-g-_full06.jpg",
      "3",
      "Yonex Vcore"),
  ItemRaket(
      "https://tennishygge.com/wp-content/uploads/2017/09/afgeage.jpeg",
      "4",
      "Volkl"),
  ItemRaket(
      "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//101/MTA-2854379/specs_specs-swervo-meteor-sepatu-bola-pria---light-blue-spirit-orange--100667-_full02.jpg",
      "5",
      "Specs Swero"),
  ItemRaket(
      "https://mall.wikidiskon.com/details/1050/images/104/MTA-1727888/nike_nike-mercurial-vortex-iii-neymar-fg-921511-407-sepatu-sepakbola_full05.jpg",
      "6",
      "Nike Mercurial"),
  ItemRaket(
      "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//96/MTA-2919714/mizuno_mizuno-rebula-v4-sepatu-bola--p1ga187762-_full04.jpg",
      "7",
      "Mizuno Rebula"),
  ItemRaket(
      "https://ncrsport.com/img/storage/large/AO2608-001-1.jpg",
      "8",
      "Nike PG Ep"),
  ItemRaket(
      "http://cdn.elevenia.co.id/g/4/1/7/0/1/6/24417016_B.jpg",
      "9",
      "Under Armour Sc"),
  ItemRaket(
      "https://id.theprintablecoupon.com/details/1050/images/93/MTA-3166662/hrcn_hrcn-slam-dunk-mj-basketball-mpv-shoes-sepatu-basket-pria_full08.jpg",
      "10",
      "HRCN Slmdunk"),

];

class dataRaketCard extends StatelessWidget {
  const dataRaketCard({Key key, this.DataRaket}) : super(key: key);
  final ItemRaket DataRaket;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailItem(dataRaket: DataRaket)));
      },
      child: Card(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Image.network(
                    DataRaket.img,
                  )),
                  Text(DataRaket.title, style: TextStyle(fontSize: 20)),
                ]),
          )),
    );
  }
}
