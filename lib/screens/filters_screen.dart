import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree;
  bool _isLactoseFree;
  bool _isVegan;
  bool _isVegetarian;

  @override
  void initState() {
    _isGlutenFree = widget.currentFilters['gluten'];
    _isLactoseFree = widget.currentFilters['lactose'];
    _isVegan = widget.currentFilters['vegan'];
    _isVegetarian = widget.currentFilters['vegetarian'];
    super.initState();
  }

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentValue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [
          IconButton(
              onPressed: () {
                final selectedFilters = {
                  'gluten': _isGlutenFree,
                  'lactose': _isLactoseFree,
                  'vegetarian': _isVegetarian,
                  'vegan': _isVegan
                };
                widget.saveFilters(selectedFilters);
              },
              icon: Icon(Icons.save))
        ],
      ),
      drawer: MainDrawer(),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Adjust Your Meal Selection'),
        ),
        Expanded(
            child: ListView(
          children: [
            _buildSwitchListTile(
                'Gluten-Free', 'Only include gluten-free meals', _isGlutenFree,
                (newvalue) {
              setState(() {
                _isGlutenFree = newvalue;
              });
            }),
            _buildSwitchListTile('Lactose-Free',
                'Only include lactose-free meals', _isLactoseFree, (newvalue) {
              setState(() {
                _isLactoseFree = newvalue;
              });
            }),
            _buildSwitchListTile(
                'Vegetarian', 'Only include vegetarian meals', _isVegetarian,
                (newvalue) {
              setState(() {
                _isVegetarian = newvalue;
              });
            }),
            _buildSwitchListTile('Vegan', 'Only include vegan meals', _isVegan,
                (newvalue) {
              setState(() {
                _isVegan = newvalue;
              });
            })
          ],
        ))
      ]),
    );
  }
}
