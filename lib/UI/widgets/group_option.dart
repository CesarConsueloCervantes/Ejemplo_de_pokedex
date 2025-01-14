import 'package:ejemplo_de_pokedex/UI/routes/group_routes.dart';
import 'package:ejemplo_de_pokedex/UI/screens/screens.dart';
import 'package:flutter/material.dart';

class GroupOption extends StatelessWidget {
  const GroupOption({super.key});

  @override
  Widget build(BuildContext context) {
    final menuGroupOption = GroupRoutes.menuGroupOption;
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)
              ),
              child:Text(menuGroupOption[index].name, style: Theme.of(context).textTheme.bodyLarge),
              ),
              onTap: () => ResultsScreen(),
            ),
          itemCount: menuGroupOption.length
          ), 
        ),
    );
  }
}