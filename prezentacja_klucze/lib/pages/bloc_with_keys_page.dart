import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezentacja_klucze/pages/cubit/example_cubit.dart';

class BlocWithKeysPage extends StatefulWidget {
  const BlocWithKeysPage({Key? key}) : super(key: key);

  @override
  State<BlocWithKeysPage> createState() => _BlocWithKeysPageState();
}

class _BlocWithKeysPageState extends State<BlocWithKeysPage> {
  bool _isActive = false;

  GlobalKey testKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isActive
            ? BlocProvider(
                key: testKey,
                create: (context) {
                  print("Create");
                  return ExampleCubit();
                },
                child: BlocBuilder<ExampleCubit, int>(
                  builder: (context, state) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text('$state'),
                      ),
                    );
                  },
                ),
              )
            : const Text("BloC z kluczami"),
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
              BlocProvider(
                key: testKey,
                create: (context) {
                  print("Create");
                  return ExampleCubit();
                },
                child: BlocBuilder<ExampleCubit, int>(
                  builder: (context, state) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text('$state'),
                      ),
                    );
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
