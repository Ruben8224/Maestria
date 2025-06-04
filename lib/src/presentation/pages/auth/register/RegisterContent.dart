import 'package:flutter/material.dart';

class Registercontent extends StatelessWidget {
  const Registercontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                const Color.fromARGB(255, 31, 84, 149),
                const Color.fromARGB(255, 159, 83, 83),
              ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,//Horizontal
            mainAxisAlignment: MainAxisAlignment.center,//Vertical
            children: [
              __textLoginRotated(),
              SizedBox(height: 100),
              __textRegisterRotated(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                const Color.fromARGB(255, 255, 255, 255),
                const Color.fromARGB(255, 154, 154, 154),
              ]
              )
          ),
          child: Column(
            children: [
              __imageBanner()
            ],
          ),
        )
      ],
    );
  }

  Widget __imageBanner(){
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/imag/car_white.png',
        width: 200,
        height: 200,
      ),
    );
  }


  Widget __textRegisterRotated(){
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Registro',
        style: TextStyle(
          fontSize: 27,
          color:  Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
      );
  }

  Widget __textLoginRotated(){
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 24,
          color:  Colors.white,
        ),
        ),
      );
  }
}