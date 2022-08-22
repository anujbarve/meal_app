import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../widgets/category_item.dart';

import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 8.0,  
                  mainAxisSpacing: 8.0,  
                  children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id,catData.name, catData.color, catData.img)).toList(),
        ),
      ),
    );
  }
}
