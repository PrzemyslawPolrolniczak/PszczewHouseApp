import 'package:flutter/material.dart';

import '../consts.dart';
import '../routes/reservationDetails.dart';

class Tile extends StatelessWidget {
  Tile(
      {@required this.status,
      @required this.author,
      @required this.dateRange,
      @required this.peopleSigned});

  final Status status;
  final String author;
  final String dateRange;
  final int peopleSigned;

  get getStatus {
    switch (status) {
      case Status.open:
        {
          return {"color": Colors.green, "text": 'otwarty'};
        }
      case Status.ongoing:
        {
          return {"color": Colors.amber, "text": 'w trakcie'};
        }
      case Status.private:
        {
          return {"color": Colors.redAccent, "text": 'prywatny'};
        }
      case Status.past:
        {
          return {"color": Colors.grey, "text": 'przeszły'};
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ReservationDetails()),
        );
      },
      child: Container(
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
                  color: getStatus["color"],
                ),
              ),
              Flexible(
                flex: 30,
                child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Text(
                              dateRange,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Status: ${getStatus['text']},  twórca: $author",
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
                      '$peopleSigned os.',
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
      ),
    );
  }
}
