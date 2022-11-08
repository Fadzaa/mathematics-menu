import 'package:flutter/material.dart';

class kelilingSegitiga extends StatefulWidget {
  const kelilingSegitiga({Key? key}) : super(key: key);

  @override
  State<kelilingSegitiga> createState() => _kelilingSegitigaState();
}

class _kelilingSegitigaState extends State<kelilingSegitiga> {
  TextEditingController ctrSisi1 = TextEditingController();
  TextEditingController ctrSisi2 = TextEditingController();
  TextEditingController ctrSisi3 = TextEditingController();

  int hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keliling Segitiga"),),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrSisi1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Sisi Pertama"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrSisi2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Sisi Kedua"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrSisi3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Sisi Ketiga"
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              int sisi1 = int.parse(ctrSisi1.text);
              int sisi2 = int.parse(ctrSisi2.text);
              int sisi3 = int.parse(ctrSisi3.text);

              setState(() {
                hasil = sisi1 + sisi2 + sisi3;
              });
            }, child: Text("Run")),

            Container(
              child: Text("Hasil : " + hasil.toString()),
            )
          ],
        ),
      ),
    );
  }
}
