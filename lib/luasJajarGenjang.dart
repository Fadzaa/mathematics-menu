import 'package:flutter/material.dart';

class luasJajarGenjang extends StatefulWidget {
  const luasJajarGenjang({Key? key}) : super(key: key);

  @override
  State<luasJajarGenjang> createState() => _luasJajarGenjangState();
}

class _luasJajarGenjangState extends State<luasJajarGenjang> {
  TextEditingController ctrAlas = TextEditingController();
  TextEditingController ctrTinggi = TextEditingController();

  int hasil = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Luas Jajar Genjang"),),
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
                    labelText: "Masukkan Tinggi"
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              int alas = int.parse(ctrAlas.text);
              int tinggi = int.parse(ctrTinggi.text);

              setState(() {
                hasil = alas * tinggi;
              });
            }, child: Text("Run")),

            Container(
              padding: EdgeInsets.all(10),
              child: Text("Hasil : " + hasil.toString()),
            )
          ],
        ),
      ),
    );
  }
}
