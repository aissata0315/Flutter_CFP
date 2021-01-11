
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Formation extends StatefulWidget{

  @override
  FormationState createState() => FormationState();

}

class FormationState extends State<Formation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listes des formations du centre"),),
    );
  }

}