import 'package:ejemplo_de_pokedex/UI/routes/group_routes.dart';
import 'package:flutter/material.dart';

class GroupOption extends StatelessWidget {
  const GroupOption({super.key});

  @override
  Widget build(BuildContext context) {
    final menuGroupOption = GroupRoutes.menuGroupOption;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Group', style: Theme.of(context).textTheme.headlineMedium, )
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            color: Colors.red,
            borderRadius: BorderRadius.circular(10)
          ),
          child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(menuGroupOption[index].name, style: Theme.of(context).textTheme.bodyMedium),
            ), 
            separatorBuilder: (_, __) => Divider(), 
            itemCount: menuGroupOption.length
          ),
        ),
      ],
    );
  }
}