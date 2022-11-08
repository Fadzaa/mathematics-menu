import 'package:flutter/material.dart';

class kelilingJajarGenjang extends StatefulWidget {
  const kelilingJajarGenjang({Key? key}) : super(key: key);

  @override
  State<kelilingJajarGenjang> createState() => _kelilingJajarGenjangState();
}

class _kelilingJajarGenjangState extends State<kelilingJajarGenjang> {
  TextEditingController ctrAlas = TextEditingController();
  TextEditingController ctrSisiMiring = TextEditingController();
  int hasil = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keliling Jajar Genjang"),),
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
                controller: ctrSisiMiring,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Masukkan Sisi Miring "
                ),
              ),
            ),

            ElevatedButton(onPressed: () {
              int alas = int.parse(ctrAlas.text);
              int sisiMiring = int.parse(ctrSisiMiring.text);

              setState(() {
                hasil = 2 * (alas + sisiMiring);
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

