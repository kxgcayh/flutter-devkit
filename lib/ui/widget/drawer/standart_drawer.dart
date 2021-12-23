import 'package:devkitflutter/ui/reusable/global_widget.dart';
import 'package:flutter/material.dart';

class StandartDrawerPage extends StatefulWidget {
  @override
  _StandartDrawerPageState createState() => _StandartDrawerPageState();
}

class _StandartDrawerPageState extends State<StandartDrawerPage> {
  // initialize global widget
  final _globalWidget = GlobalWidget();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _globalWidget.globalAppBar(),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text('Close this drawer'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
        ),
        body: Container(
          child: Center(
            child: Text('Standart Drawer'),
          ),
        )
    );
  }
}
