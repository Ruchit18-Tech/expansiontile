import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'ExpansionTile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ExpansionTile(
          title: Text('Ruchit'),
          subtitle: Text('Profile'),
          children: <Widget>[
            ListTile(title: Text('28/10/1990')),
            ListTile(title: Text('+95 7135462572')),
            ListTile(title: Text('ruchit@gmail.com')),
          ],
        ),
        ExpansionTile(
          title: const Text('Arjun'),
          subtitle: const Text('Profile'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(title: Text('10/05/1994')),
            ListTile(title: Text('+91 4257953475')),
            ListTile(title: Text('arjun@gmail.com')),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        const ExpansionTile(
          title: Text('Ram'),
          subtitle: Text('Profile'),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(title: Text('15/04/1997')),
            ListTile(title: Text('+21 54123551351')),
            ListTile(title: Text('ram@gmail.com')),
          ],
        ),
      ],
    );
  }
}
