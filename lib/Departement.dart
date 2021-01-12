import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Departement extends StatefulWidget{

  @override
 DepartementState createState() => DepartementState();

}

class DepartementState extends State<Departement>{
  List<dynamic> listeDepartement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listes des departements"),),
      body: Center(
          child: this.listeDepartement==null?CircularProgressIndicator():
          ListView.builder(
              itemCount: (this.listeDepartement==null)?0:this.listeDepartement.length,
              itemBuilder: (context, index){
                return Card(
                  color: Colors.cyanAccent,
                  child: RaisedButton(
                    child: Text(this.listeDepartement[index]['nomdep']),
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
    listerDepartement();
  }
  void listerDepartement() {
    String url = "http://192.168.43.79:8080/departements";
    http.get(url)
        .then((resp){
      setState(() {
        this.listeDepartement=json.decode(resp.body);
      });
    }).catchError((err){
      print(err);
    });
  }
}

