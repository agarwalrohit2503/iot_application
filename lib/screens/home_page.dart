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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: "Hall"),
                Tab(text: "Dining"),
                Tab(text: "Bathroom"),
                Tab(text: "Bedroom"),
              ],
            ),
          ),
        ),
        body: _buildGridView(appliances),
      ),
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
