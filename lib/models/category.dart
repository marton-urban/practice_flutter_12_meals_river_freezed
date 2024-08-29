import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String title,
    required Color color,
  }) = _Category;
}

// import 'package:flutter/material.dart';

// class Category {
//   const Category({
//     required this.id,
//     required this.title,
//     this.color = Colors.orange,
//   });

//   final String id;
//   final String title;
//   final Color color;
// }
