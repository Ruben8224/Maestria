import 'package:flutter/material.dart';

class Defaulttextfield extends StatelessWidget {
  
  String text;
  IconData icon;
  EdgeInsetsGeometry margin;

  Defaulttextfield({
    required this.text,
    required this.icon,
    this.margin = const EdgeInsets.only(top: 25, left: 20, right: 20),
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text('Email'),
          border: InputBorder.none,
          prefixIcon: Container(
            margin: EdgeInsets.only(top: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Icon(
                  icon
                  ),
                Container(height: 20, width: 1, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
