import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category_meals_screen.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
import 'package:flutter_application_1/screens/filters_screen.dart';
import 'package:flutter_application_1/screens/meal_details_screen.dart';
import 'package:flutter_application_1/screens/taps_screen.dart';
import 'package:flutter_application_1/widgets/caterory_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter ",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.pink[300],
        canvasColor: Colors.purple[100],
        textTheme: ThemeData.light().textTheme.copyWith(),
      ),
      //home: MyHomePage(),
      //home: CategoryScreen(),
      routes: {
        "/": (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals App"),
      ),
      body: null,
    );
  }
}
