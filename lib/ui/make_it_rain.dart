import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  _MakeItRainState createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  void _rainMoney(){
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.lightBlue,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
               child: new Text("Get Rich!",
                  style: new TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: 32.5
                  ),)
            ),
            new Expanded(
                child: new Center(
                  child: new Text('\$$_moneyCounter!',
                    style: new TextStyle(
                        color: _moneyCounter> 2000 ? Colors.blueAccent: Colors.red,
                        fontSize: 48.5,
                        fontWeight: FontWeight.w900
                    ),),
                )),
            new Expanded(
                child: new Center(
                  child: new FlatButton(onPressed: _rainMoney,
                      child: new Text("Let It Rain!",
                      style: new TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.5
                      ),)),
                ))

          ],
        ),
      ),
    );
  }
}
