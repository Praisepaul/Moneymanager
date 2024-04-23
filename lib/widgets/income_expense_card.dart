import 'package:flutter/material.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData(this.label, this.amount, this.icon);
}

class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;

  const IncomeExpenseCard({super.key, required this.expenseData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 105,
        margin: const EdgeInsets.only(right: 16, top: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: expenseData.label == "Income"
                ? const Color.fromARGB(255, 61, 252, 68)
                : const Color.fromARGB(255, 210, 35, 22),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(expenseData.label,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white)),
                    Text(expenseData.amount,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ]),
            ),
            Icon(
              expenseData.icon,
              color: Colors.white,
            ),
          ],
        ));
  }
}
