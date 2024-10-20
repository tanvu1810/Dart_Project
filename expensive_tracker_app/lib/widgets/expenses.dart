import 'package:expensive_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:expensive_tracker_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expensive_tracker_app/models/expense.dart';

// Sử dụng statefulWidget khi muốn thay đổi trạng thái bên trong
// Trong trường này nó quản lí và thay đổi danh sách chi phí
class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  // Tạo danh sách các đối tượng expense
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19,
      date: DateTime.now(),
      category: CateGory.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 19.99,
      date: DateTime.now(),
      category: CateGory.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            title: const Text('Expenses Tracker'),
            actions: [
              IconButton(
                onPressed: _openAddExpenseOverlay,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          // Chức năng biểu đồ
          const Text('The Chart'),
          // Chức năng danh sách chi phí

          const Text('Expenses List'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
