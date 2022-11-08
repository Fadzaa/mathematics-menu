import 'package:flutter/material.dart';

class luasPersegiPanjang extends StatefulWidget {
  const luasPersegiPanjang({Key? key}) : super(key: key);

  @override
  State<luasPersegiPanjang> createState() => _luasPersegiPanjangState();
}

class _luasPersegiPanjangState extends State<luasPersegiPanjang> {
  TextEditingController ctrPanjang = TextEditingController();
  TextEditingController ctrLebar = TextEditingController();
  int hasil = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Luas Persegi Panjang"),),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrPanjang,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: " Masukkan Panjang"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrLebar,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Lebar "
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              int panjang = int.parse(ctrPanjang.text);
              int lebar = int.parse(ctrLebar.text);

              setState(() {
                hasil = panjang * lebar;
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
