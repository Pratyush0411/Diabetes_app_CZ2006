import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'Library.dart';
import 'MealLog.dart';
import 'FoodMainPage.dart';
import 'Recipes.dart';
import 'MealPlanManager.dart';
import 'RecommendPlan.dart';
import 'mealResults.dart';
import 'RecipeDetails.dart';

void main() {
  runApp(RecipePage());

  // Map<String, dynamic> request = {
  //   "diet":"",
  //   "intolerances": "Peanuts, gluten",
  //   "minCarbs": "50",
  //   "maxCarbs": "200",
  //   "minCalories": "400",
  //   "maxCalories": "500",
  //   "minSugar": "10",
  //   "maxSugar":"20",
  //   "number": "5",
  //   "addRecipeInformation": "true"
  // };
  // MealPlanMgr mg = new MealPlanMgr();
  // mg.fetchRecipes(request);

}


class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // Define the default brightness and colors.
          primaryColor: Colors.teal.shade800,
          backgroundColor: Colors.pink.shade100,

          // Define the default font family.
          fontFamily: 'Roboto',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
              headline2: TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
              headline3: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              headline4: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade800),
              headline5: TextStyle(fontSize: 40, color: Colors.teal.shade800),
              headline6: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
      // CHANGE INITIAL ROUTE TO 1. /mealLog for meal log entry
      // CHANGE INITIAL ROUTE TO 2. /chooseRecipe for meal recommendation UI
      initialRoute: '/mealLog',
      routes: {
        //mealResultsPage.routeName: (context) => mealResultsPage(),
        // ROUTE : /mealLog
        MealLogPage.routeName: (context) => MealLogPage(),
        // ROUTE : /Library
        MainFetchData.routeName: (context) => MainFetchData(),
        // ROUTE: /chooseRecipe
        UpdateFoodPreference.routename: (context) => UpdateFoodPreference()
        //DetailScreen.routeName: (context, recipe) => DetailScreen(recipe)
      },
    );
  }
}


