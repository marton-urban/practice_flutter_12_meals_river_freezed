import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/meal.dart';

part 'favorites_provider.g.dart';

@Riverpod(keepAlive: true)
class FavoriteMeals extends _$FavoriteMeals {
  @override
  List<Meal> build() {
    return [];
  }

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = [...(state..remove(meal))];
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}
