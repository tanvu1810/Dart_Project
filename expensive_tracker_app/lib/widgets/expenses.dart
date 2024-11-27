import 'package:expensive_tracker_app/models/expense.dart';
import 'package:expensive_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:expensive_tracker_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  // Khoi tao danh sach chi phi
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Learn Flutter',
      amount: 18,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 20,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  // Tao ham _openAddExpenseOverlay
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => NewExpense(
        onAddExpense: _addExpense,
      ),
    );
  }

  // Tap ham them chi phi
  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  // Tao ham xoa chi phi
  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);

    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: const Text('Expense Deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(
              () {
                _registeredExpenses.insert(expenseIndex, expense);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('Expenses not found. Start adding some !'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Tracker App'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('Flow Chart'),
          // Danh sach cac chi phi
          const Text('Expenses List'),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
