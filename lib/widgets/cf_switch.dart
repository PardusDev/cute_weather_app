import 'package:flutter/material.dart';

class CelciusFahrenheitSwitch extends StatefulWidget {
  const CelciusFahrenheitSwitch({super.key});

  @override
  State<CelciusFahrenheitSwitch> createState() => _CelciusFahrenheitSwitchState();
}

class _CelciusFahrenheitSwitchState extends State<CelciusFahrenheitSwitch> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("C°", style: TextStyle(color: value ? Colors.black : Colors.grey, fontSize: 18)),
          Text("  /  ", style: TextStyle(color: Colors.grey, fontSize: 12)),
          Text("F°", style: TextStyle(color: value ? Colors.grey : Colors.black, fontSize: 18))
        ],
      ),
      onPressed: () {
        setState(() {
          value = !value;
        });
      },
    );
  }
}
