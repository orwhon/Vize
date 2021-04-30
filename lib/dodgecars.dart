import 'package:flutter/material.dart';
import 'package:vize/dodgechal.dart';

class DodgeCars extends StatefulWidget {
  @override
  _DodgeCarsState createState() => _DodgeCarsState();
}

class _DodgeCarsState extends State<DodgeCars> {
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
                      leading: Image.asset('assets/images/Dodge1.jpg'),
                      title: Text(
                        'Dodge Challanger 2021',
                        style: TextStyle(fontSize: 15,),
                      ),
                    ),
                  onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => DodgeChal()));
                  },
                ),
              ),
          ],
        ),
      ),
    );

  }
}
