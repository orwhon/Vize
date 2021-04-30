import 'package:flutter/material.dart';

class ToyotaSup extends StatefulWidget {
  @override
  _ToyotaSupState createState() => _ToyotaSupState();
}

class _ToyotaSupState extends State<ToyotaSup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("TOYOTA SUPRA"),
      ),
      body: SafeArea(
        child: Column(children: [
          Image.asset('assets/images/Toyota1.jpg',
            height: 250,),
          Divider(height: 5,),
          Column(
            children: [
              Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
            ],
          ),
        Divider(height: 3,),
        Text('Marka: Toyota', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Model: Supra', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('İmalata Geçilme Yılı: 2020', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Motor: 3.0 Z4 M40i', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('GÜÇ: 258 HPW', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Azami Hız: 250 KM/H', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Yakıt Deposu Hacmi: 54 Litre', style: TextStyle(fontSize: 20),),
        ],),
      ),
    );
  }
}
