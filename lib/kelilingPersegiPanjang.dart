import 'package:flutter/material.dart';

class kelilingPersegiPanjang extends StatefulWidget {
  const kelilingPersegiPanjang({Key? key}) : super(key: key);

  @override
  State<kelilingPersegiPanjang> createState() => _kelilingPersegiPanjangState();
}

class _kelilingPersegiPanjangState extends State<kelilingPersegiPanjang> {
  TextEditingController ctrPanjang = TextEditingController();
  TextEditingController ctrLebar = TextEditingController();
  int hasil = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keliling Persegi Panjang"),),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: ctrPanjang,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Masukkan Panjang "
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
                hasil = 2 * (panjang + lebar);
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
