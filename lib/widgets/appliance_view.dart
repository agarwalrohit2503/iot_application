import 'package:flutter/material.dart';

import 'package:iot_application/models/electrical_application.dart';

class ElectricalApplianceView extends StatelessWidget {
  final ElectricalAppliance appliance;
  const ElectricalApplianceView({
    Key? key,
    required this.appliance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 85, 162, 224),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      appliance.title!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textScaleFactor: 1.2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      appliance.subTitle!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.check_circle_rounded,
                  color: Colors.white,
                ),
              ],
            ),
            const Spacer(),
            ValueListenableBuilder(
              valueListenable: appliance.activated,
              builder: (BuildContext context, bool value, Widget? child) {
                return Row(
                  children: [
                    Text(
                      value ? "ON" : "OFF",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 80, 76, 76),
                      ),
                    ),
                    const Spacer(),
                    Switch(
                      value: value,
                      onChanged: (v) {
                        appliance.activated.value = v;
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
