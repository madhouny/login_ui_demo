import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home_page';
  @override
  Widget build(BuildContext context) {
    final home = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Welcome Master MIASHS',
      style: TextStyle(fontSize: 28.0, color: Colors.white),),
    );

    final texte = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Bonjour, Celui ci est Tp pour la matiere IHM donnant une bref presentation de la technologie FLUTTER ',
        style: TextStyle(fontSize: 16.0, color: Colors.white),),
    );

    final body = Container(
    width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ]),
      ),
      child: Column(children: [
        home,welcome,texte
      ],),
    );
    return Scaffold(
      body: body,
    );
  }
}
