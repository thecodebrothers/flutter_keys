import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DuplicateValueKeysPage extends StatefulWidget {
  const DuplicateValueKeysPage({Key? key}) : super(key: key);

  @override
  State<DuplicateValueKeysPage> createState() => _DuplicateValueKeysPageState();
}

class _DuplicateValueKeysPageState extends State<DuplicateValueKeysPage> {
  List<EquatableObject> widgets = [
    EquatableObject('Tekst1', 'Tekst2'), // Takie same wartości pól
    EquatableObject('Tekst1', 'Tekst2'), // Takie same wartości pól
    EquatableObject('Tekst1', 'Teskt3'), // Inne wartości pól
  ];

  // Takie same wartości pól ale inne obiekty
  final item1 = EquatableObject('Tekst1', 'Tekst2');

  final item2 = EquatableObject('Tekst1', 'Tekst2');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lokalne klucze porównanie"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgets
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${item.hashCode}',
                    key: ObjectKey(
                      item,
                    ),
                  ),
                ),
              )
              .toList(),
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
