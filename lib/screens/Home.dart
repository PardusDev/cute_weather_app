import 'package:cute_weather_app/widgets/cf_switch.dart';
import 'package:flutter/material.dart';

import '../widgets/text_with_icon.dart';

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
                Center(child: Image.network('https://i.hizliresim.com/c4t4ab0.jpg', width: 200,)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            children: [
                              WidgetSpan(child: Icon(Icons.arrow_drop_down_outlined)),
                              TextSpan(text: "24°", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                            ]
                        )
                    ),
                    Text("40°", style: TextStyle(fontSize: 120, fontWeight: FontWeight.w100),),
                    RichText(
                        text: TextSpan(
                            children: [
                              WidgetSpan(child: Icon(Icons.arrow_drop_up)),
                              TextSpan(text: "42°", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                            ]
                        )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWithIcon(text: "61%", icon: Icon(Icons.water_drop_outlined),),
                    TextWithIcon(text: "5 km/h", icon: Icon(Icons.wind_power_outlined),),
                    TextWithIcon(text: "742 mbar", icon: Icon(Icons.speed_outlined),)
                  ],
                ),
              ],
        ),
      ),
    );
  }
}
