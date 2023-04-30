import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:random_meal_generator/meal_model.dart';
import 'package:random_meal_generator/repository.dart';

final mealProvider = FutureProvider<MealModel>((ref){
  print("Calling provider");
  return MealRepository().getMeal();
});