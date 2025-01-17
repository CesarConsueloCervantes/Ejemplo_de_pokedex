import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String statname;
  final String stat;
  final Color color;
  const StatsCard({super.key,required this.statname, required this.stat, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        
      ),
    );
  }
}