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
      ],
    );
  }
}