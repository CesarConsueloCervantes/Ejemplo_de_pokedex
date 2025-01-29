import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';

class GroupOption extends StatelessWidget {
  final List<PType> types;
  const GroupOption({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
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
            child:Text(types[index].name, style: Theme.of(context).textTheme.bodyLarge),
            ),
            onTap: () => Navigator.pushNamed(context, 'results', arguments: index),
          ),
        itemCount: types.length
      ),
    );
  }
}