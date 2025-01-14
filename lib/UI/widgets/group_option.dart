import 'package:flutter/material.dart';

class GroupOption extends StatelessWidget {
  const GroupOption({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemBuilder: itemBuilder, 
            separatorBuilder: separatorBuilder, 
            itemCount: itemCount
          ),
        ),
      ],
    );
  }
}