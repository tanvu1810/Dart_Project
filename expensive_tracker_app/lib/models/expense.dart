// Cai dat thu vien de moi chi phi co mot ID duy nhat
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
// Cai dat thu vien de dinh dang ngay thang
import 'package:intl/intl.dart';

// Khoi tao doi tuong uuid
const uuid = Uuid();
// Khoi tao doi tuong fomatter
final fomatter = DateFormat.yMd();
// Khoi tao map categoryIcon (Key: enum : values: icons)
final categoryIcons = {
  Category.food: Icons.food_bank,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight,
  Category.work: Icons.work,
};

// Khoi tao enum Category danh sach cac gia tri hang so khong doi
enum Category { travel, leisure, work, food }

// Cai dat lop expense
class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();
  final String id;
  final String title;
  final DateTime date;
  final double amount;
  final Category category;

  String get formatedDate {
    return fomatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();
  final Category category;
  final List<Expense> expenses;
  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
