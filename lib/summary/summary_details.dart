import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_time/summary/summary_items.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({required this.summary, super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 800,
      padding: const EdgeInsets.only(top: 10, bottom: 8, left: 5, right: 5),
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 243, 161, 99),
      ),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          dragStartBehavior: DragStartBehavior.start,
          child: Column(
            children: summary.map((data) {
              return SummaryItems(data: data);
            }).toList(),
          )),
    );
  }
}
