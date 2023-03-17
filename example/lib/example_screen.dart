import 'package:common_x/widgets/dev/dev_switch.dart';
import 'package:common_x/widgets/dev/dev_text_button.dart';
import 'package:common_x/widgets/dev/dev_tool.dart';
import 'package:common_x/widgets/dev/model/dev_tool_item.dart';
import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  bool isSwitchEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          DevSwitch(
            label: "Animated Switch ${isSwitchEnable}",
            onTap: () {},
            onChange: (value) {
              // setState(() {
              //   isSwitchEnable = value;
              // });
            },
            isEnabled: isSwitchEnable,
          ),
          DevTextButton(
            title: "Dev Mode",
            onTap: () {
              showDialog(
                barrierColor: Colors.indigo,
                barrierDismissible: false,
                context: context,
                builder: (_) => DevTool(
                  onClose: () {
                    Navigator.of(context).pop();
                  },
                  onItemTap: (item) async {},
                  items: [
                    DevToolItem(
                      id: "http",
                      title: "http".toUpperCase(),
                    ),
                  ],
                ),
                useSafeArea: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
