
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Formation extends StatefulWidget{

  @override
  FormationState createState() => FormationState();

}

class FormationState extends State<Formation>{
  List<dynamic> listeFormation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listes des formations"),),
      body: Center(
          child: this.listeFormation==null?CircularProgressIndicator():
          ListView.builder(
              itemCount: (this.listeFormation==null)?0:this.listeFormation.length,
              itemBuilder: (context, index){
                return Card(
                  color: Colors.cyanAccent,
                  child: RaisedButton(
                    child: Text(this.listeFormation[index]['nomFormation']),

                  ),
                );
              }
          )
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listerFormation();
  }
  void listerFormation() {
    String url = "http://192.168.43.79:8080/formations";
    http.get(url)
        .then((response){
      setState(() {
        this.listeFormation=json.decode(response.body);
      });
    }).catchError((err){
      print(err);
    });
  }
}

