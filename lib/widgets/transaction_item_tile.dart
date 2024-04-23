import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneymanager/data/userInfo.dart';

class TransactionItemTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionItemTile({super.key, required this.transaction});
  String getSign(TransactionType type) {
    switch (type) {
      case TransactionType.inflow:
        return "+";
      case TransactionType.outflow:
        return "-";
    }
  }

  Color getRandomBgColor() {
    return Color(Random().nextInt(0xff000000));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 176, 172, 172).withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 8,
              offset: Offset.zero,
            )
          ]),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: getRandomBgColor(),
                borderRadius: BorderRadius.circular(8)),
            child: transaction.categoryType == ItemCategoryType.fashion
                ? const Icon(Icons.supervised_user_circle_sharp)
                : const Icon(Icons.house)),
        title: Text(transaction.itemCategoryName),
        subtitle: Text(transaction.itemName),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
                "${getSign(transaction.transactionType)} ${transaction.amount}",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color:
                        transaction.transactionType == TransactionType.outflow
                            ? Colors.red
                            : Colors.green,
                    fontWeight: FontWeight.bold)),
            Text(transaction.date,
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
