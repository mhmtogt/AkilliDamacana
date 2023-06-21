import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('TEST SAYFASI') ,),

      body: const Center(
        child: Text('bu bir test sayfasidir'),
      ),
    );
  }
}