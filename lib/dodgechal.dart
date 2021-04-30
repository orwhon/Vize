import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DodgeChal extends StatefulWidget {
  @override
  _DodgeChalState createState() => _DodgeChalState();
}

class _DodgeChalState extends State<DodgeChal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Dodge Challanger 2021"),
      ),
      body: SafeArea(
        child: Column(children: [
          Image.asset('assets/images/Dodge1.jpg',
          height: 250,),
          Divider(height: 5),
          Column(
            children: [
              Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
              Divider(height: 3,),
              Text('Marka: Dodge', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Model: Challanger', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('İmalata Geçilme Yılı: 2021', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Motor: 6.1 SRT HEMI V8', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('GÜÇ: 425 HPW', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Azami Hız: 270 KM/H', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Yakıt Deposu Hacmi: 72 Litre', style: TextStyle(fontSize: 20),),
            ],
          )
        ],),
      ),
    );
  }
}
