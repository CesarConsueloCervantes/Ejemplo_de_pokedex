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
        ],
      ),
    );
  }
}