import 'package:flutter/material.dart';
import 'mercedesamg.dart';
import 'mercedesg63.dart';

class MercedesCars extends StatefulWidget {
  @override
  _MercedesCarsState createState() => _MercedesCarsState();
}

class _MercedesCarsState extends State<MercedesCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Mercedes-Benz',
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
                  leading: Image.asset('assets/images/Mercedes/MercedesAmg.jpg'),
                  title: Text(
                    'Mercedes AMG 2021',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MercedesAmg()));
                },
              ),
            ),
            Card(
              color: Colors.yellow,
              //margin: EdgeInsets.symmetric(horizontal: 0,),
              child: FlatButton(
                child: ListTile(
                  leading: Image.asset('assets/images/Mercedes/Mercedesg63.jpg'),
                  title: Text(
                    'Mercedes G63 2021',
                    style: TextStyle(fontSize: 15,),
                  ),
                ),
                onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MercedesG63()));
                },
              ),
            ),
          ],
        ),
      ),
    );

  }
}