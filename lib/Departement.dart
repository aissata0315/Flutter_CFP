
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Departement extends StatefulWidget{

  @override
 DepartementState createState() => DepartementState();

}

class DepartementState extends State<Departement>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listes des departements du centre"),),
    );
  }

}