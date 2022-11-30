import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/foodProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<FoodProvider>(context, listen: false).getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Api"),
      ),
      body: Consumer<FoodProvider>(
        builder: (context, value, child) {
          final foods = value.foods;
          return ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index) {
                final food = foods[index];
                return ListTile(
                  title: Text(food.message),
                  leading: CircleAvatar(
                    child: Text(food.message),
                  ),
                );
              });
        },
      ),
    );
  }
}
