//Chỉ dùng để hiển thi danh sách các chi phí
//Chứ không thay đổi dữ liệu vì thế ta dùng statelesswidget
import 'package:expensive_tracker_app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:expensive_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(4),
        child: ExpensesItem(
          expenses[index],
        ),
      ),
    );
  }
}
