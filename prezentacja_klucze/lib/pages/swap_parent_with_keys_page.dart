import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/widgets/square_stateful.dart';

class SwapParentWithKeysPage extends StatefulWidget {
  const SwapParentWithKeysPage({Key? key}) : super(key: key);

  @override
  State<SwapParentWithKeysPage> createState() => _SwapParentWithKeysPageState();
}

class _SwapParentWithKeysPageState extends State<SwapParentWithKeysPage> {
  bool _isActive = false;

  GlobalKey testKey = GlobalKey();

  @override
  void initState() {
    debugProfileBuildsEnabled = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isActive
            ? SquareStateful(
                key: testKey,
                milliseconds: 400,
                onDragCompleted: () {},
                progressColor: Colors.green,
              )
            : const Text("Zmiana rodzica z kluczami globalnymi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => setState(() => _isActive = !_isActive),
              child: const Text("Zmień rodzica"),
            ),
            const SizedBox(
              height: 50,
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
