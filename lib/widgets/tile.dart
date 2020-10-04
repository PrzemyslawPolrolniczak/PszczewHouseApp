import 'package:flutter/material.dart';

import '../consts.dart';

class Tile extends StatelessWidget {
  Tile({@required this.status});

  final Status status;

  get getStatusColor {
    switch (status) {
      case Status.open:
        {
          return Colors.green;
        }
      case Status.ongoing:
        {
          return Colors.amber;
        }
      case Status.private:
        {
          return Colors.redAccent;
        }
      case Status.past:
        {
          return Colors.grey;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                height: double.infinity,
                width: 16,
                color: getStatusColor,
              ),
            ),
            Flexible(
              flex: 30,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Text(
                            '24.08 - 02.09',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Status: w trakcie,  twórca: Rysiek",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ])),
            ),
            Flexible(
              flex: 10,
              child: Container(
                  height: double.infinity,
                  child: Text(
                    '5 os.',
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.grey[300], width: 1)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
