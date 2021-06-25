import 'package:flutter/material.dart';

class MercedesAmg extends StatefulWidget {
  @override
  _MercedesAmgState createState() => _MercedesAmgState();
}

class _MercedesAmgState extends State<MercedesAmg> {
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Mercedes AMG 2021"),
      ),
      body: SafeArea(
        child: Column(children: [
          GestureDetector(
            onLongPress:(){
              setState(() {
                x++;
              });
            },
            child: x%2==1?Image.asset('assets/images/Mercedes/Mercedesg63.jpg'):Image.asset('assets/images/Mercedes/MercedesAmg.jpg',
              height: 250,),
          ),
          Divider(height: 5),
          Column(
            children: [
              Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
              Divider(height: 3,),
              Text('Marka: Mercedes', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Model: AMG', style: TextStyle(fontSize: 20),),
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
