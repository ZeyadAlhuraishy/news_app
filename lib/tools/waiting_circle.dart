import 'package:flutter/material.dart';

class WaitingCircle extends StatelessWidget {
  const WaitingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
