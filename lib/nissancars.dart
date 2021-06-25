import 'package:flutter/material.dart';
import 'package:vize/nissansky.dart';

import 'nissangtr.dart';

class NissanCars extends StatefulWidget {
  @override
  _NissanCarsState createState() => _NissanCarsState();
}

class _NissanCarsState extends State<NissanCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'NİSSAN',
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
                  leading: Image.asset('assets/images/Nissan/NissanSky.jpg'),
                  title: Text(
                    'Nissan Skyline',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NissanSky()));
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              //margin: EdgeInsets.symmetric(horizontal: 0,),
              child: FlatButton(
                child: ListTile(
                  leading: Image.asset('assets/images/Nissan/Nissan1.jpg'),
                  title: Text(
                    'Nissan GT-R',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NissanGtr()));
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
