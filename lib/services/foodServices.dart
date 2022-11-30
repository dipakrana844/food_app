import 'package:http/http.dart' as http;
import 'package:food_app/model/foodModel.dart';

import 'dart:convert';

class FoodServices {
  Future<List<Food>> getAll() async {
    const url =
        "https://www.foodchow.com/api/FoodChowWD/AllRestaurantsWDOfferApp?Country=India&city=Surat&area=&longitude=&latitude=&deliveryMethod=&cuisineId=2,1&clientid=&startlimit=0&endlimit=1000&onoffflag";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      print("My json is : $json");
      final main = json.first();
      print("My main is : $main");
      json.map((e) {
        print("My json.length is : $json.length");
      });
      final foods = json.map((e) {
        return Food(
            message: e['message'],
            data: e['data'],
            count: e['count'],
            responseCode: e['responseCode']);
      }).toList();
      return foods;
    }
    return [];
  }
}
