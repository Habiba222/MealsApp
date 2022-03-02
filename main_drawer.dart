import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget BuildListTile(String title, IconData icon, Function Tabing) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: () => Tabing(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.purple,
            alignment: Alignment.centerLeft,
            child: Text(
              'cooking yam !',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BuildListTile('Meal', Icons.restaurant,
              () => Navigator.of(context).pushReplacementNamed('/')),
          BuildListTile(
              'Filters',
              Icons.settings,
              () => Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName)),

          // ListTile(
          //   leading: Icon(
          //     Icons.restaurant,
          //     size: 26,
          //   ),
          //   title: Text(
          //     'meal',
          //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //   ),
          //   onTap: () => null,

          // ),
        ],
      ),
    );
  }
}
