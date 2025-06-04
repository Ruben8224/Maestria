import 'package:flutter/material.dart';

class Defaultbutton extends StatelessWidget {

  String text;
  Color color;
  Color textColor;
  
  Defaultbutton({
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 25, left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          ),
        child: Text(
          'Iniciar sesion', 
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
            )),
      ),
    );
    ;
  }
}
