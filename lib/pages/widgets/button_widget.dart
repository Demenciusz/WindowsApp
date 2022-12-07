import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.fun,
    required this.widgetText,
  });
  final VoidCallback fun;
  final String widgetText;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.fun,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.blue),
          width: 150,
          height: 120,
          child: Text(
            widget.widgetText,
            style: const TextStyle(fontSize: 80),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
