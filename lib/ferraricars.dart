import 'package:flutter/material.dart';
import 'package:vize/ferrarif12.dart';

class FerrariCars extends StatefulWidget {
  @override
  _FerrariCarsState createState() => _FerrariCarsState();
}

class _FerrariCarsState extends State<FerrariCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'FERRARİ',
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
                  leading: Image.asset('assets/images/Ferrari1.jpg'),
                  title: Text(
                    'FERRARİ F12',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FerrariF12()));
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
