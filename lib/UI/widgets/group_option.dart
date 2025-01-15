import 'package:ejemplo_de_pokedex/UI/routes/group_routes.dart';
import 'package:flutter/material.dart';

class GroupOption extends StatelessWidget {
  const GroupOption({super.key});

  @override
  Widget build(BuildContext context) {
    final menuGroupOption = GroupRoutes.menuGroupOption;
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
        shrinkWrap: true,
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
            onTap: () => Navigator.pushNamed(context, 'results'),
          ),
        itemCount: menuGroupOption.length
      ),
    );
  }
}