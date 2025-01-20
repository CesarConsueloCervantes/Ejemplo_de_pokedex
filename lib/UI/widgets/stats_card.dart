import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String statname;
  final String stat;
  final Color color;
  const StatsCard({super.key,required this.statname, required this.stat, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(statname, style: Theme.of(context).textTheme.headlineSmall),
          ),
          Text(stat, style: Theme.of(context).textTheme.headlineSmall)
        ],
      ),
    );
  }
}