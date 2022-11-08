import 'package:flutter/material.dart';

class kelilingPersegi extends StatefulWidget {
  const kelilingPersegi({Key? key}) : super(key: key);

  @override
  State<kelilingPersegi> createState() => _kelilingPersegiState();
}

class _kelilingPersegiState extends State<kelilingPersegi> {
  TextEditingController ctrSisi = TextEditingController();
  int hasil =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keliling Persegi"),),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrSisi ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Sisi Persegi"
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              int sisi = int.parse(ctrSisi.text);

              setState(() {
                hasil = 4 * sisi;
              });

            }, child: Text("Run")),

            Container(
              padding: EdgeInsets.all(40),
              child: Text("Hasil : " + hasil.toString()),
            )
          ],
        ),
      ),
    );
  }
}
