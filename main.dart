import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Flutter',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Data tentang foto dan nama
  final List<Map<String, String>> data = [
    {
      "name": "kue cubit",
      "harga": "Rp 20.000",
      "imageUrl":
          "https://cdn1-production-images-kly.akamaized.net/1V1quA_R3UTNPr6t36CXXrBEOYs=/0x251:5472x3335/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3056755/original/049637700_1582267418-shutterstock_501315370.jpg"
    },
    {
      "name": "nastar",
      "harga": "Rp 30.000",
      "imageUrl":
          "https://images.tokopedia.net/img/KRMmCm/2022/9/27/bade0ac6-63aa-4789-8f50-3e9b62a2f6cf.jpg"
    },
    {
      "name": "putri salju",
      "harga": "Rp 30.000",
      "imageUrl":
          "https://asset.kompas.com/crops/pJmIO7KPwCNjvUWKHmOj4PUsIcE=/0x369:800x902/750x500/data/photo/2022/04/22/62621e8c0d56b.jpg"
    },
    {
      "name": "Lidah kucing",
      "harga": "Rp 20.000",
      "imageUrl":
          "https://www.primarasa.co.id/images/images/Lidah%20Kucing%20Keju%20-%20Resep%282%29.jpg"
    },
    {
      "name": "sagu",
      "harga": "Rp 20.000",
      "imageUrl":
          "https://www.astronauts.id/blog/wp-content/uploads/2023/03/Resep-Kue-Sagu-Keju-yang-Bikin-Nagih-Lembut-Lumer-Dimulut.jpg"
    },
    {
      "name": "Butter cookies",
      "harga": "Rp 30.000",
      "imageUrl":
          "https://sallysbakingaddiction.com/wp-content/uploads/2019/11/butter-cookies-3.jpg"
    },
    {
      "name": "cookies coklat ",
      "harga": "Rp 40.000",
      "imageUrl": "https://i.ytimg.com/vi/pnsKDKp5_iI/maxresdefault.jpg"
    },
    {
      "name": "Kue Cornflake ",
      "harga": "Rp 40.000",
      "imageUrl":
          "https://resepkoki.co/wp-content/uploads/2012/02/kue-kering-cokelat-corn-flakes.jpg"
    },
    {
      "name": "pastel kering ",
      "harga": "Rp 30.000",
      "imageUrl":
          "https://img-global.cpcdn.com/recipes/66d15fa15c092e35/680x482cq70/pastel-goreng-renyah-foto-resep-utama.jpg"
    },
    {
      "name": "kue pancong ",
      "harga": "Rp 40.000",
      "imageUrl":
          "https://assets-a1.kompasiana.com/items/album/2023/01/06/pancong-1-63b787e04addee51ff2a1142.jpg"
    },
    {
      "name": "kue semprong ",
      "harga": "Rp 20.000",
      "imageUrl":
          "https://i0.wp.com/resepkoki.id/wp-content/uploads/2018/03/Resep-Kue-Semprong.jpg?fit=1597%2C1920&ssl=1"
    },
    {
      "name": "Kue kenari ",
      "harga": "Rp 40.000",
      "imageUrl":
          "https://www.resepkuerenyah.com/wp-content/uploads/2015/11/kue-kenari.jpg.webp"
    },
    {
      "name": "kaastangel ",
      "harga": "Rp 40.000",
      "imageUrl":
          "https://images.tokopedia.net/img/KRMmCm/2023/4/4/3e9ccb4d-c22d-47ca-8df0-8b8c51add49b.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5b7992),
      appBar: AppBar(
        centerTitle: true,
        title: Text('katalog cookies'),
        backgroundColor: Color(0xff564f70),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return buildListItem(item);
        },
      ),
    );
  }

  Widget buildListItem(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: ClipOval(
          child: Image.network(
            item["imageUrl"] ?? "",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          item["name"] ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          item["harga"] ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
