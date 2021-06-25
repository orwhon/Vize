import 'package:flutter/material.dart';

class NissanGtr extends StatefulWidget {
  @override
  _NissanGtrState createState() => _NissanGtrState();
}

class _NissanGtrState extends State<NissanGtr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("NİSSAN GT-R"),
      ),
      body: SafeArea(
        child: Column(children: [
          Image.asset('assets/images/Nissan/Nissan1.jpg',
            height: 250,),
          Divider(height: 5,),
          Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
        Divider(height: 3,),
        Text('Marka: Nissan', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Model: GT-R Nismo', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('İmalata Geçilme Yılı: 2018', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Motor: 3.8 V6', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('GÜÇ: 530 HPW', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Azami Hız: 320 KM/H', style: TextStyle(fontSize: 20),),
        Divider(height: 3,),
        Text('Yakıt Deposu Hacmi: 74 Litre', style: TextStyle(fontSize: 20),),
        ],),
      ),
    );
  }
}
