import 'package:expensive_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

// Tien ich khong trang thai boi vi no chi hien thi noi dung chu khong thay doi trang thai
// O day la hien thi chi phi len man hinh
class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expense,
  });
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcons[expense.category],
                    ),
                    const SizedBox(width: 10),
                    Text(expense.formatedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
