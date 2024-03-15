import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});
//this is loader for this app
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
