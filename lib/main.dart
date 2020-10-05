import 'package:flutter/material.dart';

import './consts.dart';
import './widgets/tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        backgroundColor: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: MyHomePage(title: 'Pszczew App'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.comment),
              ),
            ],
            unselectedLabelColor: Colors.black45,
            indicatorColor: Colors.black54,
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Tile(
                    status: Status.open,
                    dateRange: "24.08 - 02.09",
                    peopleSigned: 5,
                    author: "Przemek",
                  ),
                  Tile(
                    status: Status.ongoing,
                    dateRange: "12.12 - 12.01",
                    peopleSigned: 15,
                    author: "Rysiek",
                  ),
                  Tile(
                    status: Status.private,
                    dateRange: "15.02 - 22.02",
                    peopleSigned: 2,
                    author: "Beata",
                  ),
                  Tile(
                    status: Status.past,
                    dateRange: "13.02 - 11.02",
                    peopleSigned: 7,
                    author: "Arek",
                  )
                ],
              ),
            ),
            Text('Test2'),
            Text('Test3')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
