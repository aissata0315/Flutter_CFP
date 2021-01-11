
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Candidature extends StatefulWidget{

  @override
  CandidatureState createState() => CandidatureState();

}

class CandidatureState extends State<Candidature>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Faire une candidature"),),
    );
  }

}