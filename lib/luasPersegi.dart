import 'package:flutter/material.dart';

class luasPersegi extends StatefulWidget {
  const luasPersegi({Key? key}) : super(key: key);

  @override
  State<luasPersegi> createState() => _luasPersegiState();
}

class _luasPersegiState extends State<luasPersegi> {
  TextEditingController ctrSisi = TextEditingController();

  int hasil = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Luas Persegi"),),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrSisi,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Sisi Persegi",
                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              int sisi = int.parse(ctrSisi.text);

              setState(() {
                hasil = sisi * sisi;
              });
            }, child: Text("Run")),

            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  "Hasil : " + hasil.toString(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
