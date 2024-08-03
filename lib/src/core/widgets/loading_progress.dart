import 'package:flutter/material.dart';

class LoadingProgrss extends StatelessWidget {
  const LoadingProgrss({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
