import 'package:flutter/material.dart';
import 'package:iot_application/models/electrical_application.dart';
import 'package:iot_application/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<List<ElectricalAppliance>>(create: (context) => applications),
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}

final List<ElectricalAppliance> applications = [
  ElectricalAppliance(
    activated: ValueNotifier(false),
    title: "LIGHT",
    subTitle: "FAN SW",
  ),
  ElectricalAppliance(
    activated: ValueNotifier(false),
    title: "LIGHT",
    subTitle: "D-Light 2",
  ),
  ElectricalAppliance(
    activated: ValueNotifier(false),
    title: "LIGHT",
    subTitle: "TubeLight",
  ),
  ElectricalAppliance(
    activated: ValueNotifier(false),
    title: "RGB",
    subTitle: "Hall Strip",
  ),
  ElectricalAppliance(
    activated: ValueNotifier(false),
    title: "LIGHT",
    subTitle: "D-Light 5",
  ),
  ElectricalAppliance(
    activated: ValueNotifier(false),
    title: "LIGHT",
    subTitle: "D-Light 1",
  ),
];
