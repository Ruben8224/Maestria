import 'package:flutter/material.dart';
import 'package:uber/src/presentation/widgets/DefaultButton.dart';
import 'package:uber/src/presentation/widgets/DefaultTextField.dart';

class Logincontent extends StatelessWidget {
  const Logincontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 31, 84, 149),
                const Color.fromARGB(255, 159, 83, 83),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          padding: EdgeInsets.only(left: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _textLoginRotated(),
              SizedBox(height: 50),
              __textRegisterRotated(context),
              SizedBox(height: 90),
            ],
          ),
        ),
        Container(
          //height: MediaQuery.of(context).size.height * 0.93,
          //width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(left: 60, bottom: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 26, 71, 126),
                const Color.fromARGB(255, 122, 63, 63),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                __textWelcome('Bienvenido'),
                __textWelcome('Freeway'),
                __imgCar(),
                __textLogin(),

                Defaulttextfield(text: 'Email', icon: Icons.email_outlined),
                Defaulttextfield(
                  text: 'Password',
                  icon: Icons.lock_outline,
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                ),

                Spacer(),
                Defaultbutton(text: 'LOGIN'),

                __separatorOr(),

                SizedBox(height: 10),
                
                __textDontHaveAccount(context),

                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget __textDontHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: Colors.grey[100], fontSize: 17),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'register');
          },
          child: Text(
            'Registrate',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }

  Widget __separatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 10),
        ),
        Text('OR ', style: TextStyle(color: Colors.white, fontSize: 17)),
        Container(width: 25, height: 1, color: Colors.white),
      ],
    );
  }

  Widget __textWelcome(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget __imgCar() {
    return Container(
      alignment: Alignment.center,
      child: Image.asset('assets/img/car.png', width: 200, height: 200),
    );
  }

  Widget __textLogin() {
    return Text(
      'Login',
      style: TextStyle(
        color: Colors.white,
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget __textRegisterRotated(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'register');
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Registro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _textLoginRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
