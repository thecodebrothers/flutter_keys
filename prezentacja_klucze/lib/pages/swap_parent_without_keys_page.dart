import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/widgets/square_stateful.dart';

class SwapParentWithoutKeysPage extends StatefulWidget {
  const SwapParentWithoutKeysPage({Key? key}) : super(key: key);

  @override
  State<SwapParentWithoutKeysPage> createState() => _SwapParentWithoutKeysPageState();
}

class _SwapParentWithoutKeysPageState extends State<SwapParentWithoutKeysPage> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isActive
            ? SquareStateful(
                milliseconds: 400,
                onDragCompleted: () {},
                progressColor: Colors.green,
              )
            : Text("Zmiana rodzica bez kluczy"),
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
