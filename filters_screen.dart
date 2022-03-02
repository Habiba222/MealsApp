import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Center(
        child: Text('filters'),
      ),
      drawer: MainDrawer(),
    );
  }
}
