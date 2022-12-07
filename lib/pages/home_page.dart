import 'package:flutter/material.dart';
import 'package:windows_app/pages/widgets/button_widget.dart';
import 'package:windows_app/pages/widgets/display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Display(
            value: i,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                fun: () {
                  setState(() {
                    i++;
                  });
                },
                widgetText: '+',
              ),
              ButtonWidget(
                fun: () {
                  setState(() {
                    i = 0;
                  });
                },
                widgetText: 'RST',
              )
            ],
          )
        ],
      ),
    );
  }
}
