import 'package:flutter/material.dart';

class kalkulator extends StatefulWidget {
  const kalkulator({Key? key}) : super(key: key);

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  TextEditingController ctrAngka1 = TextEditingController();
  TextEditingController ctrAngka2 = TextEditingController();
  int hasil = 0;
  double hasilBagi = 0;
  String hasilString = "";

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: AppBar(title: Text("Kalkulator")),
          body: Container(
            child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: ctrAngka1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Input Angka 1",

                    ),
                  ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: ctrAngka2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Input Angka 2",

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    int angka1 = int.parse(ctrAngka1.text);
                    int angka2 = int.parse(ctrAngka2.text);

                    setState(() {
                      hasil = angka1 + angka2;
                      hasilString = hasil.toString();

                    });

                  }, child: Text("+")),
                  ElevatedButton(onPressed: () {
                    int angka1 = int.parse(ctrAngka1.text);
                    int angka2 = int.parse(ctrAngka2.text);

                    setState(() {
                      hasil = angka1 - angka2;
                      hasilString = hasil.toString();

                    });
                  }, child: Text("-")),
                  ElevatedButton(onPressed: () {
                    int angka1 = int.parse(ctrAngka1.text);
                    int angka2 = int.parse(ctrAngka2.text);

                    setState(() {
                      hasil = angka1 * angka2;
                      hasilString = hasil.toString();

                    });
                  }, child: Text("*")),
                  ElevatedButton(onPressed: () {
                    double angka1 = double.parse(ctrAngka1.text);
                    double angka2 = double.parse(ctrAngka2.text);

                    setState(() {
                      hasilBagi = angka1 / angka2;
                      hasilString = hasilBagi.toString();
                    });
                  }, child: Text("/")),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "Hasil : " + hasilString,
                  style: TextStyle(fontSize: 20),
                ),
              )

            ],
          ),



            ),
          );

  }
}
