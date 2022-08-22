import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName:(ctx) => FiltersScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (_) => CategoriesScreen());
      },
    );
  }
}
