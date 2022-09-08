import 'dart:convert';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:prezentacja_klucze/router.gr.dart';

class MenuPage extends StatefulWidget implements AutoRouteWrapper {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SampleButton(
            onPressed: () {
              context.router.push(const SwapParentWithoutKeysRoute());
            },
            title: "1. Zmiana rodzica bez kluczy",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const SwapParentWithKeysRoute());
            },
            title: "2. Zmiana rodzica z kluczami globalnymi",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const SwapParentWithLocalKeysRoute());
            },
            title: "3. Zmiana rodzica z kluczami lokalnymi",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const SwapParentWithLocalKeysTheSameLevelRoute());
            },
            title: "4. Zmiana rodzica względem tego samego i różnego rodzica",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const DuplicateValueKeysRoute());
            },
            title: "5. Lokalne klucze porównanie",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const ObjectVsUniqueKeyRoute());
            },
            title: "6. Object vs Unique",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const SwapWithoutKeysRoute());
            },
            title: "7. Zamiana bez kluczy",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const SwapWithKeysRoute());
            },
            title: "8. Zamiana z kluczami",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const BlocWithKeysRoute());
            },
            title: "9. BLoC z kluczami",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const BlocWithoutKeysRoute());
            },
            title: "10. BLoC bez kluczy",
          ),
          SampleButton(
            onPressed: () {
              context.router.push(const FormRoute());
            },
            title: "11. Formularz",
          ),
        ],
      ),
    );
  }
}

class SampleButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SampleButton({
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(title),
        ),
      ),
    );
  }
}

String getRandString(int len) {
  var random = Random.secure();
  var values = List<int>.generate(len, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}
