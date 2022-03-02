import 'package:flutter/material.dart';
import 'package:flutter_application_1/dummy-data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = "meal_details";

  Widget buildSelectTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget buildContainer(Widget child) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.pink),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 150,
        width: 300,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectMeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectMeal.imageUrl, fit: BoxFit.cover),
            ),
            buildSelectTitle(context, 'Ingredients'),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     border: Border.all(color: Colors.pink),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   margin: EdgeInsets.all(10),
            //   padding: EdgeInsets.all(10),
            //   height: 150,
            //   width: 300,
            //   child: ListView.builder(
            //     itemBuilder: (ctx, index) => Card(
            //       color: Theme.of(context).accentColor,
            //       child: Padding(
            //         padding:
            //             const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            //         child: Text(selectMeal.ingredients[index]),
            //       ),
            //     ),
            //     itemCount: selectMeal.ingredients.length,
            //   ),
            // ),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectMeal.ingredients.length,
              ),
            ),
            buildSelectTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                      ),
                      title: Text(selectMeal.steps[index]),
                    ),
                    const Divider()
                  ],
                ),
                itemCount: selectMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Navigator.of(context).pop,
        child: Icon(Icons.delete),
      ),
    );
  }
}
