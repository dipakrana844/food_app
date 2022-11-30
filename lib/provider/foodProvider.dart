
import 'package:flutter/cupertino.dart';
import 'package:food_app/model/foodModel.dart';
import 'package:food_app/services/foodServices.dart';

class FoodProvider extends ChangeNotifier {
  final _service = FoodServices();
  bool isLoading = false;
  List<Food> _foods = [];

  List<Food> get foods => _foods;

  Future<void> getAllFoods() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();

    _foods = response;
    isLoading = false;
    notifyListeners();
  }
}