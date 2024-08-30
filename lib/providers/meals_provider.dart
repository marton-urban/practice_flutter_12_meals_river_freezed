import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

part 'meals_provider.g.dart';

@Riverpod(keepAlive: true)
List<Meal> meals(MealsRef ref) {
  return dummyMeals;
}

// final mealsProvider = Provider((ref) {
//   return dummyMeals;
// });
