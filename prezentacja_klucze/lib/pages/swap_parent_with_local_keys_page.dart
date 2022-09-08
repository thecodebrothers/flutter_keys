import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/widgets/square_stateful.dart';

class SwapParentWithLocalKeysPage extends StatefulWidget {
  const SwapParentWithLocalKeysPage({Key? key}) : super(key: key);

  @override
  State<SwapParentWithLocalKeysPage> createState() =>
      _SwapParentWithLocalKeysPageState();
}

class _SwapParentWithLocalKeysPageState extends State<SwapParentWithLocalKeysPage> {
  bool _isActive = false;

  UniqueKey testKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isActive
            ? SquareStateful(
                key: testKey,
                milliseconds: 400,
                onDragCompleted: () {},
                progressColor: Colors.green)
            : Text("Zmiana rodzica z kluczami lokalnymi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => setState(() => _isActive = !_isActive),
              child: Text("Zmień rodzica"),
            ),
            if (!_isActive)
              SquareStateful(
                key: testKey,
                milliseconds: 400,
                onDragCompleted: () {},
                progressColor: Colors.green,
              )
          ],
        ),
      ),
    );
  }
}
