import 'package:flutter/material.dart';
import 'package:windows_app/pages/widgets/button_widget.dart';
import 'package:windows_app/pages/widgets/display.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int i = 0;

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
                fun: () {},
                widgetText: '+',
              ),
              ButtonWidget(
                fun: () {},
                widgetText: 'RST',
              )
            ],
          )
        ],
      ),
    );
  }
}
