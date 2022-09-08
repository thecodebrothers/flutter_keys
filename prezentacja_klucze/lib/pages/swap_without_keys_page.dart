import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/widgets/square_stateful.dart';

class SwapWithoutKeysPage extends StatefulWidget {
  const SwapWithoutKeysPage({Key? key}) : super(key: key);

  @override
  State<SwapWithoutKeysPage> createState() => _SwapWithoutKeysPageState();
}

class _SwapWithoutKeysPageState extends State<SwapWithoutKeysPage> {
  List<Widget> tiles = [];

  @override
  void initState() {
    tiles = [
      SquareStateful(
        milliseconds: 400,
        onDragCompleted: onDragCompleted,
        progressColor: Colors.green,
      ),
      SquareStateful(
        milliseconds: 800,
        onDragCompleted: onDragCompleted,
        progressColor: Colors.blue,
      ),
    ];
    super.initState();
  }

  void onDragCompleted() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zamiana miejsca bez kluczy"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Wszystko odbywa się w tej samej kolumnie'),
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...tiles,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
