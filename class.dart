
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  String mesaj = "Merhabaalarr";
  var ogrenciler = ["engin", "kerem", "bengsu"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),
    );
  }

  String sinavHesapla(int puan) {
    int puan=35;
    String mesaj = "";
    if (puan >= 50) {
      mesaj = "geçti";
    } else if (puan >= 40) {
      mesaj = "büt";
    } else {
      mesaj = "kaldı";
    }
    return mesaj;
  }

  void mesajGoster(BuildContext context, String mesaj) {
    var alert = AlertDialog(
      //bir kere dokunuldugunda
      title: Text("sınav sonucu"),
      content: Text(mesaj),
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context) {
    return  Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
              //ListView.builder = eleman sayısı kadar item builder fonk çalıştırılmasını sağlar
                itemCount: ogrenciler.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(ogrenciler[index]);
                })),
        Center(
          child: ElevatedButton(
            child: Text("sonucu gör!!!!!"),
            onPressed: () {
              var mesaj= sinavHesapla(75);
              mesajGoster(context, mesaj);
            },
          ),
        ),
      ],
    );
  }
}
