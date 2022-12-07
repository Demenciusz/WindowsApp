import 'package:flutter/material.dart';
import 'package:windows_app/pages/widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
