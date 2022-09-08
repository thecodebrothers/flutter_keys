import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/pages/widgets/square_stateful.dart';

class SwapParentWithLocalKeysTheSameLevelPage extends StatefulWidget {
  const SwapParentWithLocalKeysTheSameLevelPage({Key? key}) : super(key: key);

  @override
  State<SwapParentWithLocalKeysTheSameLevelPage> createState() =>
      _SwapParentWithLocalKeysTheSameLevelPageState();
}

class _SwapParentWithLocalKeysTheSameLevelPageState
    extends State<SwapParentWithLocalKeysTheSameLevelPage> {
  int _isActiveCounter = 0;

  final testKey = const ValueKey(0);
  final testKey1 = const ValueKey(0.0);
  final testKey2 = const ValueKey("0");
  final testKey3 = const ValueKey(true);
  final testKey4 = ValueKey(DateTime.now());
  final testKey5 = const ValueKey(EquatableObject('d', 'd'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zmiana rodzica względem tego samego i różnego rodzica"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Rodzic 1"),
                if (_isActiveCounter == 1)
                  SquareStateful(
                    key: testKey,
                    milliseconds: 400,
                    onDragCompleted: () {},
                    progressColor: Colors.green,
                  )
                else
                  SizedBox(
                    height: 100,
                    width: 100,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: MaterialButton(
                    onPressed: () => setState(() {
                      _isActiveCounter++; //
                      if (_isActiveCounter == 4) {
                        _isActiveCounter = 0;
                      }
                    }),
                    child: Text("Zmień pozycję widgetu"),
                  ),
                ),
                if (_isActiveCounter == 0)
                  SquareStateful(
                    key: testKey,
                    milliseconds: 400,
                    onDragCompleted: () {},
                    progressColor: Colors.green,
                  )
                else
                  SizedBox(
                    height: 100,
                    width: 100,
                  ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rodzic 2"),
                        if (_isActiveCounter == 2)
                          SquareStateful(
                            key: testKey,
                            milliseconds: 400,
                            onDragCompleted: () {},
                            progressColor: Colors.green,
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EquatableObject extends Equatable {
  final String c;
  final String d;

  const EquatableObject(this.c, this.d);

  @override
  List<Object> get props => [c, d];
}
