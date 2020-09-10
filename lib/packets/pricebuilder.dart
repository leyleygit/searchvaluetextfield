import 'package:flutter/material.dart';

class pricebuilder extends StatefulWidget {
  final List<String> priceitem ;
  const pricebuilder({Key key, this.priceitem}) : super(key: key);
  @override
  _pricebuilderState createState() => _pricebuilderState();
}

class _pricebuilderState extends State<pricebuilder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.09,
        width: size.width,
        child: Center(
            child: Text(
          "${widget.priceitem}",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.6),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
