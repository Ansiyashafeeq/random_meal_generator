import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:random_meal_generator/meal_model.dart';

class MealRepository{
  Future<MealModel> getMeal() async {
    String url = "https://www.themealdb.com/api/json/v1/1/random.php";
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    return MealModel.fromjson(jsonDecode(response.body));
  }
}