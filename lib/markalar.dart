import 'package:flutter/material.dart';
import 'package:vize/dodgecars.dart';
import 'package:vize/nissancars.dart';
import 'package:vize/toyotacars.dart';
import 'package:vize/ferraricars.dart';

class Markalar extends StatefulWidget {
  String MusteriNo;
  Markalar({this.MusteriNo,});

  @override
  _MarkalarState createState() => _MarkalarState();
}

class _MarkalarState extends State<Markalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'MARKALAR',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'KronaOne',
          ),
        ),
        actions:<Widget> [
          IconButton(icon: const Icon(Icons.perm_identity),
          onPressed: (){
            final snackBar = SnackBar(content: Text.rich(
              TextSpan(children:<TextSpan>[
                TextSpan(text:'Müşteri No: ', style: TextStyle(fontSize: 20,)),
                TextSpan(text: widget.MusteriNo, style: TextStyle(fontSize: 20,)),
              ],
              ),
              )
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },)
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            child: Image.asset('assets/images/DodgeLogo.png'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DodgeCars(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            child: Image.asset('assets/images/FerrariLogo.png'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FerrariCars()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            child: Image.asset('assets/images/NissanLogo.png'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NissanCars()));
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(child: Image.asset('assets/images/ToyotaLogo.png'),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> ToyotaCars()));
                          },),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
