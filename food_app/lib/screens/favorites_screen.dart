import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';


class FavoritesScreen extends StatelessWidget {
  final   List<Meal> favoritedMeals;

  FavoritesScreen(this.favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if(favoritedMeals.isEmpty){
      return Center(child: Text('You have no Favorites yet - start adding some...!'),);  
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritedMeals[index].id,
            title: favoritedMeals[index].title,
            imageUrl: favoritedMeals[index].imageUrl,
            duration: favoritedMeals[index].duration,
            affordability: favoritedMeals[index].affordability,
            complexity: favoritedMeals[index].complexity,
            // removeItem: _removeMeal,
          );
        },
        itemCount: favoritedMeals.length,
      );
    }
    
  }
}