import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/meal.dart';
import 'meals_provider.dart';

part 'filters_provider.g.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

@Riverpod(keepAlive: true)
class Filters extends _$Filters {
  @override
  Map<Filter, bool> build() {
    return {
      Filter.glutenFree: false,
      Filter.lactoseFree: false,
      Filter.vegetarian: false,
      Filter.vegan: false,
    };
  }

  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    // state[filter] = isActive; // not allowed! => mutating state
    state = {
      ...state,
      filter: isActive,
    };
  }

  List<Meal> getFilteredMeals() {
    final meals = ref.watch(mealsProvider);
    return meals.where((meal) {
      if (state[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (state[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (state[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (state[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList();
  }
}
