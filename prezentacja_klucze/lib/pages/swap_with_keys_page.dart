import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/widgets/square_stateful.dart';

class SwapWithKeysPage extends StatefulWidget {
  const SwapWithKeysPage({Key? key}) : super(key: key);

  @override
  State<SwapWithKeysPage> createState() => _SwapWithKeysPageState();
}

class _SwapWithKeysPageState extends State<SwapWithKeysPage> {
  List<Widget> tiles = [];

  @override
  void initState() {
    tiles = [
      SquareStateful(
        key: UniqueKey(),
        milliseconds: 400,
        onDragCompleted: onDragCompleted,
        progressColor: Colors.green,
      ),
      SquareStateful(
        key: UniqueKey(),
        milliseconds: 800,
        onDragCompleted: onDragCompleted,
        progressColor: Colors.blue,
      ),
    ];
    debugProfileBuildsEnabled = true;
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
        title: Text("Zamiana miejsca z kluczami"),
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
