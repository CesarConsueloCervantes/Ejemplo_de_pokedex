import 'package:ejemplo_de_pokedex/UI/routes/group_routes.dart';
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
            title: Text(menuGroupOption[index].name, style: Theme.of(context).textTheme.bodyMedium),
          ), 
          itemCount: menuGroupOption.length
        ),
      ),
    );
  }
}