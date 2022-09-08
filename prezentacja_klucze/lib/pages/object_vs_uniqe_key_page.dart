import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/menu_page.dart';

class ObjectVsUniqueKeyPage extends StatefulWidget {
  const ObjectVsUniqueKeyPage({Key? key}) : super(key: key);

  @override
  State<ObjectVsUniqueKeyPage> createState() => _ObjectVsUniqueKeyPageState();
}

class _ObjectVsUniqueKeyPageState extends State<ObjectVsUniqueKeyPage> {
  List<EquatableObject> widgets = [
    EquatableObject('Tekst1', 'Tekst2'), // Takie same wartości pól
    // EquatableObject('Tekst1', 'Tekst2'), // Takie same wartości pól
    EquatableObject('Tekst1', 'Teskt3'), //
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unique vs Object/Value"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...widgets
                .map(
                  (item) => SquareStateful(
                      key: UniqueKey(), elementHash: "${item.hashCode}"),
                )
                .toList(),
            TextButton(
              onPressed: () {
                setState(() {});
              },
              child: Text(
                "Rebuild",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EquatableObject extends Equatable {
  final String title;
  final String description;

  const EquatableObject(this.title, this.description);

  @override
  List<Object> get props => [title, description];
}

class SquareStateful extends StatefulWidget {
  const SquareStateful({Key? key, required this.elementHash}) : super(key: key);

  final String elementHash;

  @override
  State<SquareStateful> createState() => _SquareStatefulState();
}

class _SquareStatefulState extends State<SquareStateful> {
  String title = '';

  @override
  void initState() {
    super.initState();
    title = getRandString(5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        child: Center(
            child: Column(
          children: [
            Text(title),
            Text(widget.elementHash),
          ],
        )));
  }
}
