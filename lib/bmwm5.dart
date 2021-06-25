import 'package:flutter/material.dart';

class BmwM5 extends StatefulWidget {
  @override
  _BmwM5State createState() => _BmwM5State();
}

class _BmwM5State extends State<BmwM5> {
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Bmw M5 2021"),
      ),
      body: SafeArea(
        child: Column(children: [
          GestureDetector(
            onHorizontalDragEnd:(DragEndDetails details){
              setState(() {
                x++;
              });
            },
            child: x%2==1?Image.asset('assets/images/BMW/Bmwi8.jpg'):Image.asset('assets/images/BMW/BmwM5.jpg',
              height: 250,),
          ),
          Divider(height: 5),
          Column(
            children: [
              Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
              Divider(height: 3,),
              Text('Marka: BMW', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Model: M5', style: TextStyle(fontSize: 20),),
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
