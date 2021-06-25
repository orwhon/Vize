import 'package:flutter/material.dart';
import 'package:vize/bmwm5.dart';
import 'bmwi8.dart';

class BmwCars extends StatefulWidget {
  @override
  _BmwCarsState createState() => _BmwCarsState();
}

class _BmwCarsState extends State<BmwCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'DODGE',
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
                  leading: Image.asset('assets/images/BMW/Bmwi8.jpg'),
                  title: Text(
                    'BMW I8 2021',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BmwI8()));
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              //margin: EdgeInsets.symmetric(horizontal: 0,),
              child: FlatButton(
                child: ListTile(
                  leading: Image.asset('assets/images/BMW/BmwM5.jpg'),
                  title: Text(
                    'BMW M5 2021',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BmwM5()));
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}
