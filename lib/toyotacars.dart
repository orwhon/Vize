import 'package:flutter/material.dart';
import 'package:vize/toyotasup.dart';
import 'package:vize/toyoytayaris.dart';

class ToyotaCars extends StatefulWidget {
  @override
  _ToyotaCarsState createState() => _ToyotaCarsState();
}

class _ToyotaCarsState extends State<ToyotaCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'TOYOTA',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'KronaOne',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              color: Colors.yellow,
              //margin: EdgeInsets.symmetric(horizontal: 0,),
              child: FlatButton(
                child: ListTile(
                  leading: Image.asset('assets/images/Toyota/ToyotaYaris.jpg'),
                  title: Text(
                    'Toyota Yaris',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ToyotaYaris()));
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              //margin: EdgeInsets.symmetric(horizontal: 0,),
              child: FlatButton(
                child: ListTile(
                  leading: Image.asset('assets/images/Toyota/Toyota1.jpg'),
                  title: Text(
                    'Toyota SUPRA',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ToyotaSup()));
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
