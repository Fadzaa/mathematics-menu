import 'package:flutter/material.dart';
import 'package:kalkulator/kelilingJajarGenjang.dart';
import 'package:kalkulator/kelilingPersegi.dart';
import 'package:kalkulator/kelilingPersegiPanjang.dart';
import 'package:kalkulator/kelilingSegitiga.dart';
import 'package:kalkulator/luasJajarGenjang.dart';
import 'package:kalkulator/luasPersegi.dart';
import 'package:kalkulator/luasPersegiPanjang.dart';
import 'package:kalkulator/luasSegitiga.dart';

class bangunDatar extends StatefulWidget {
  const bangunDatar({Key? key}) : super(key: key);

  @override
  State<bangunDatar> createState() => _bangunDatarState();
}

class _bangunDatarState extends State<bangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bangun Datar"),),
      body: Container(
        child: SingleChildScrollView(
        child: Column(
              children: [

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/square_icon.png',height: 95, width: 95,),

                ),

                Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(5),
                    child: Text("Persegi")
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  mainAxisSize: MainAxisSize.min,
                  overflowDirection: VerticalDirection.down,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const luasPersegi()),);
                    }, child: Text("Luas")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const kelilingPersegi()),);
                    },child: Text("Keliling")
                    ),
                  ],
                ),

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/triangle_icon.png', height: 95, width: 95,),
                ),

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Text("Segitiga"),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  mainAxisSize: MainAxisSize.min,
                  overflowDirection: VerticalDirection.down,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const luasSegitiga()),);
                    }, child: Text("Luas")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const kelilingSegitiga()),);
                    },child: Text("Keliling")
                    ),
                  ],
                ),

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/rectangle_icon.png', height: 95, width: 95,),
                ),

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Text("Persegi Panjang"),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  mainAxisSize: MainAxisSize.min,
                  overflowDirection: VerticalDirection.down,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const luasPersegiPanjang()),);
                    }, child: Text("Luas")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const kelilingPersegiPanjang()),);
                    },child: Text("Keliling")
                    ),
                  ],
                ),

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/JajarGenjang.png', height: 95, width: 95,),
                ),

                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10),
                  child: Text("Jajar Genjang"),
                ),

                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  mainAxisSize: MainAxisSize.min,
                  overflowDirection: VerticalDirection.down,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const luasJajarGenjang()),);
                    }, child: Text("Luas")),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const kelilingJajarGenjang()),);
                    },child: Text("Keliling")
                    ),
                  ],
                ),

              ],
            ),

        ),
      ),
    );
  }
}
