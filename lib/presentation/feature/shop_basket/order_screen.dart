import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  

  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(child: const Text('merhaba'),),
    );
  }
}