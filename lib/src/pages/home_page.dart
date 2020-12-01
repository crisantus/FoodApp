import 'package:flutter/material.dart';
import 'package:food_app/src/data/food_data.dart';
import 'package:food_app/src/model/food_model.dart';
import 'package:food_app/widget/bought_foods.dart';
import 'package:food_app/widget/food_catagory.dart';
import 'package:food_app/widget/home_top_info.dart';
import 'package:food_app/widget/search_field.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Food> _food = foods; //list of foods

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          children: [
            HomeTopInfo(),
            FoodCategory(),
            SizedBox(height: 20.0,),
            SearchField(),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Frequently Bought Foods",
                  style: TextStyle(fontSize: 18.8, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 18.8,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Column(
              children: _food.map(_boughtFoodItem).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _boughtFoodItem(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id:food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}


