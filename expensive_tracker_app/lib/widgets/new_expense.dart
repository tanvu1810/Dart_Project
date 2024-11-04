import 'package:expensive_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpense});
  final void Function(Expense expense) onAddExpense;
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  Category _selectedCategory = Category.food;
  DateTime? _selectedDate;
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 10, now.month, now.day);
    final lastDate = DateTime(2030, 12, 31);
    final datePicked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    setState(() {
      _selectedDate = datePicked;
    });
  }

  void _submitExpenseData() {
    final enteredAmount = double.tryParse(_amountController.text);
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (_titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        _selectedDate == null) {
      // Show error message
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid Input'),
          content:
              const Text('Ban nhap khong dung dinh dang vui long nhap lai!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Okey'),
            ),
          ],
        ),
      );
      return;
    }
    widget.onAddExpense(
      Expense(
          amount: enteredAmount,
          date: _selectedDate!,
          category: _selectedCategory,
          title: _titleController.text),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Amount'),
                    prefixText: '\$ ',
                  ),
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _selectedDate == null
                        ? 'No date select'
                        : fomatter.format(_selectedDate!),
                  ),
                  IconButton(
                    onPressed: _presentDatePicker,
                    icon: const Icon(Icons.calendar_month),
                  )
                ],
              ))
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                icon: const Icon(Icons.arrow_drop_down_outlined),
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(
                          category.name.toUpperCase(),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) => setState(
                  () {
                    if (value == null) {
                      return;
                    }
                    _selectedCategory = value;
                  },
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _submitExpenseData,
                child: const Text('Save Expenses'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
