import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'meal.freezed.dart';

enum Complexity {
  simple,
  challenging,
  hard,
}

enum Affordability {
  affordable,
  pricey,
  luxurious,
}

@freezed
class Meal with _$Meal {
  const factory Meal({
    required String id,
    required List<String> categories,
    required String title,
    required String imageUrl,
    required List<String> ingredients,
    required List<String> steps,
    required int duration,
    required Complexity complexity,
    required Affordability affordability,
    required bool isGlutenFree,
    required bool isLactoseFree,
    required bool isVegan,
    required bool isVegetarian,
  }) = _Meal;
}

// class Meal {
//   const Meal({
//     required this.id,
//     required this.categories,
//     required this.title,
//     required this.imageUrl,
//     required this.ingredients,
//     required this.steps,
//     required this.duration,
//     required this.complexity,
//     required this.affordability,
//     required this.isGlutenFree,
//     required this.isLactoseFree,
//     required this.isVegan,
//     required this.isVegetarian,
//   });

//   final String id;
//   final List<String> categories;
//   final String title;
//   final String imageUrl;
//   final List<String> ingredients;
//   final List<String> steps;
//   final int duration;
//   final Complexity complexity;
//   final Affordability affordability;
//   final bool isGlutenFree;
//   final bool isLactoseFree;
//   final bool isVegan;
//   final bool isVegetarian;
// }
