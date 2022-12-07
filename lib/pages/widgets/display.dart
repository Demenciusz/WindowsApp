import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({required this.value});
  final int value;

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(color: Colors.blue.shade200),
      child: Text(
        '${widget.value.toString().padLeft(4, '0')}',
        style: const TextStyle(
          fontSize: 80,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
