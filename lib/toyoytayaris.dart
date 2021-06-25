import 'package:flutter/material.dart';

class ToyotaYaris extends StatefulWidget {
  @override
  _ToyotaYarisState createState() => _ToyotaYarisState();
}

class _ToyotaYarisState extends State<ToyotaYaris> {
  int x=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Toyota Yaris 2007"),
      ),
      body: SafeArea(
        child: Column(children: [
          GestureDetector(
            onHorizontalDragEnd:(DragEndDetails details){
              setState(() {
                x++;
              });
            },
            child: x%2==1?Image.asset('assets/images/Toyota/Toyota1.jpg'):Image.asset('assets/images/Toyota/ToyotaYaris.jpg',
              height: 250,),
          ),
          Divider(height: 5),
          Column(
            children: [
              Center(child: Text('ARABA HAKKINDA BİLGİLER', style: TextStyle(fontSize: 25, color: Colors.black87,),),),
              Divider(height: 3,),
              Text('Marka: Toyota', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('Model: Yaris', style: TextStyle(fontSize: 20),),
              Divider(height: 3,),
              Text('İmalata Geçilme Yılı: 2007', style: TextStyle(fontSize: 20),),
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
