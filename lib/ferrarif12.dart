import 'package:flutter/material.dart';

class FerrariF12 extends StatefulWidget {
  @override
  _FerrariF12State createState() => _FerrariF12State();
}

class _FerrariF12State extends State<FerrariF12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("FERRARİ F12"),
      ),
      body: SafeArea(
        child: Column(children: [
          Image.asset('assets/images/Ferrari1.jpg',
            height: 250,),
          Divider(height: 5,),
          Column(
            children: [
              Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
      Divider(height: 3,),
      Text('Marka: Ferrari', style: TextStyle(fontSize: 20),),
      Divider(height: 3,),
      Text('Model: F12', style: TextStyle(fontSize: 20),),
      Divider(height: 3,),
      Text('İmalata Geçilme Yılı: 2012', style: TextStyle(fontSize: 20),),
      Divider(height: 3,),
      Text('Motor: 6.3 F140 FC V12', style: TextStyle(fontSize: 20),),
      Divider(height: 3,),
      Text('GÜÇ: 740 HPW', style: TextStyle(fontSize: 20),),
      Divider(height: 3,),
      Text('Azami Hız: 340 KM/H', style: TextStyle(fontSize: 20),),
      Divider(height: 3,),
      Text('Yakıt Deposu Hacmi: 60 Litre', style: TextStyle(fontSize: 20),),
            ],
          ),
    ],),
      ),
    );
  }
}
