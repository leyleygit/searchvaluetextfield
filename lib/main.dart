import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_widget/detailsPage.dart';
import 'package:test_widget/packets/pricebuilder.dart';
import 'package:test_widget/packets/priceitem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String q = "";
  List<String> pricedata = [
    "5",
    "10",
    "20",
    "30",
    "40",
    "50",
    "60",
    "70",
    "80",
    "90",
    "100",
    "110",
    "120",
    "130",
    "140",
    "150",
    "151",
    "1532",
    "15151",
    "1516526",
  ];
  List<String> endquery;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    print(q);
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          keyboardType: TextInputType.number,
          onChanged: (val) => setState(() {
            q = val;
            endquery =
                pricedata.where((prices) => prices.startsWith(q)).toList();
          }),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.teal.withOpacity(0.3),
        child: ListView.builder(
            itemCount: q == "" ? pricedata.length : endquery.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: size.height * 0.07,
                  width: size.width,
                  color: Colors.black,
                  child: Center(
                      child: q == ""
                          ? Text(
                              "${pricedata[index]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )
                          : Text(
                              "${endquery[index]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )),
                ),
              );
            }),
      ),
    );
  }
}
