import 'package:flutter/material.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          Column(
            children: [
              Text('Income'),
              Text('₹ 5000.00'),
            ],
          ),
          Column(
            children: [
              Text('Expense'),
              Text('₹ 3000.00'),
            ],
          ),
        ],)
    );
  }
}
