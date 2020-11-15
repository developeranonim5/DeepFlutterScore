import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AddScore.dart';

class AddTeam extends StatelessWidget {
  TextEditingController team1Controller = TextEditingController();
  TextEditingController team2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          // alignment: Alignment.centerLeft,

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 300.0, bottom: 120.0),
                child: (Text("SCORE COUNT",
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 60,
                        fontWeight: FontWeight.w900)))),
            Container(
                margin: EdgeInsets.only(bottom: 5.0, right: 16.0, left: 16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("TEAM A",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w900)),
                )),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              margin: EdgeInsets.only(bottom: 25.0, right: 16.0, left: 16.0),
              child: TextField(
                controller: team1Controller,
                decoration: InputDecoration(
                  hintText: 'Input Your Name Team',
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1,
                margin: EdgeInsets.only(bottom: 5.0, right: 16.0, left: 16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("TEAM B",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w900)),
                )),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              margin: EdgeInsets.only(bottom: 25.0, right: 16.0, left: 16.0),
              child: TextField(
                controller: team2Controller,
                decoration: InputDecoration(
                  hintText: 'Input Your Name Team',
                  fillColor: Colors.lightBlueAccent,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 25.0),
                  child: RaisedButton(
                    child: Text('START',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    color: Colors.blueGrey[800],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                    onPressed: () {
                      var nameTeam1 = team1Controller.text;
                      var nameTeam2 = team2Controller.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddScore(
                                    nameTeam1: nameTeam1,
                                    nameTeam2: nameTeam2,
                                  )));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
