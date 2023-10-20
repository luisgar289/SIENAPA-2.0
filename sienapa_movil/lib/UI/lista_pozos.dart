import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';


class ListaPozos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Pozos'),
        backgroundColor: const Color(0xFF599EAC),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Center(
           child: ElevatedCardExample(),
          ),
          SizedBox(height: 30,),
          Center(
            child: ElevatedCardExample(),
            )
          ,
        ]
      ),
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Icon(Icons.water_drop, size: 60, color: Colors.blue,),
              SizedBox(height: 10,),
              Text('Nombre Pozo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Estado:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Text("Apagado", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Electricidad:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Text("Si", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 40,
                width: 190,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListaPozos() ));
                },
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.power_settings_new, color: Colors.white, size: 30,)
                ),
              ),
              SizedBox(height: 15,),
              DialogExample()
            ],
          ),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Informacion del pozo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
    );
  }
}