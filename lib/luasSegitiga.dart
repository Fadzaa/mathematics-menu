import 'package:flutter/material.dart';

class luasSegitiga extends StatefulWidget {
  const luasSegitiga({Key? key}) : super(key: key);

  @override
  State<luasSegitiga> createState() => _luasSegitigaState();
}

class _luasSegitigaState extends State<luasSegitiga> {
  TextEditingController ctrAlas = TextEditingController();
  TextEditingController ctrTinggi = TextEditingController();

  int hasil = 0;
  double hasilBagi = 0;
  String hasilString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Luas Segitiga"),),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrAlas,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Alas "
                ),
              ),
            ),
            
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrTinggi,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Tinggi "
                ),
              ),
            ),
            
            ElevatedButton(onPressed: () {
              double alas = double.parse(ctrAlas.text);
              double tinggi = double.parse(ctrTinggi.text);

              setState(() {
                hasilBagi =  0.5 * alas * tinggi;
                hasilString = hasilBagi.toString();
              });
            }, child: Text("Run")),

            Container(
              padding: EdgeInsets.all(10),
              child: Text("Hasil : " + hasilString) ,
            )
          ],
        ),
      ),
    );
  }
}
