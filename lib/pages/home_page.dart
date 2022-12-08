import 'package:flutter/material.dart';
import 'package:windows_app/pages/widgets/button_widget.dart';
import 'package:windows_app/pages/widgets/display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> list =
      List<Widget>.generate(999, (index) => Display(value: index));
  late FixedExtentScrollController controller;
  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 500,
            child: ListWheelScrollView(
              controller: controller,
              physics: const FixedExtentScrollPhysics(),
              itemExtent: 160,
              children: list,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                fun: () {
                  setState(() {
                    controller.animateToItem(controller.selectedItem + 1,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeInOut);
                  });
                },
                widgetText: '+',
              ),
              ButtonWidget(
                fun: () {
                  setState(() {
                    controller.animateToItem(0,
                        duration: Duration(
                            milliseconds: controller.selectedItem * 50),
                        curve: Curves.easeInOut);
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
