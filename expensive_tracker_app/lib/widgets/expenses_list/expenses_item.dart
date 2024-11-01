import 'package:expensive_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '\$ ${expense.amount.toStringAsFixed(2)}',
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcons[expense.category],
                    ),
                    const SizedBox(width: 10),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
