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
      child: SizedBox(
        width: 50,
        height: 50,
        child: Text(widget.widgetText),
      ),
    );
  }
}
