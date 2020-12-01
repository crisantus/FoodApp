import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/data/category_data.dart';
import 'package:food_app/src/model/category_model.dart';
import 'package:food_app/widget/food_card.dart';


class FoodCategory extends StatelessWidget {

  final List<Category> _categories=categories;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: _categories.length,
        itemBuilder: (_,index){
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItem,
          );
        },
      ),
    );
  }
}
