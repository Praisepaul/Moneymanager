import 'package:flutter/material.dart';
import 'package:moneymanager/data/userInfo.dart';
import 'package:moneymanager/widgets/income_expense_card.dart';
import 'package:moneymanager/widgets/transaction_item_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            ListTile(
              contentPadding: const EdgeInsets.only(top: 10),
              title: Text("Hey, ${userdata.name}!"),
              leading: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Image.asset("assets/images/My_formal_pic.jpg")),
              trailing: const Icon(Icons.notifications_none_rounded),
            ),
            const SizedBox(height: 4),
            Center(
              child: Column(
                children: [
                  Text("Rs. ${userdata.totalBalance}",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 2),
                  Text("Total Balance",
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: IncomeExpenseCard(
                        expenseData: ExpenseData("Income",
                            "Rs. ${userdata.inflow}", Icons.arrow_upward))),
                const SizedBox(width: 16),
                Expanded(
                    child: IncomeExpenseCard(
                        expenseData: ExpenseData("Expense",
                            "Rs. ${userdata.outflow}", Icons.arrow_downward)))
              ],
            ),
            const SizedBox(height: 8),
            Text("Recent Transactions",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 8),
            Text("Today", style: Theme.of(context).textTheme.bodyMedium),
            ...transactions2.map(
                (transaction) => TransactionItemTile(transaction: transaction)),
            const SizedBox(height: 4),
            Text("Yesterday", style: Theme.of(context).textTheme.bodyMedium),
            ...userdata.transactions.map(
                (transaction) => TransactionItemTile(transaction: transaction))
          ],
        ),
      ),
    );
  }
}
