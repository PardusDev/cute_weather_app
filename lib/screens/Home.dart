import 'package:cute_weather_app/widgets/cf_switch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PHOENIX", style: TextStyle(letterSpacing: 3, fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),)),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black,),
          onPressed: () {  },
        ),
        actions: [
          CelciusFahrenheitSwitch(),
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Image.network('https://i.hizliresim.com/c4t4ab0.jpg', width: 200,))
          ],
        ),
      ),
    );
  }
}
