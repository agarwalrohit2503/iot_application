import 'package:flutter/material.dart';
import 'package:iot_application/models/electrical_application.dart';
import 'package:iot_application/widgets/appliance_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ElectricalAppliance> appliances =
        Provider.of<List<ElectricalAppliance>>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: _buildGridView(appliances),
    );
  }

  _buildGridView(List<ElectricalAppliance> appliances) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.1,
      ),
      itemCount: appliances.length,
      itemBuilder: (context, index) {
        return ElectricalApplianceView(appliance: appliances[index]);
      },
    );
  }
}
