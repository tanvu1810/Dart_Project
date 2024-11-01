// Them thu vien cho id va dateformat
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

// Khoi tao doi tuong uuid
const uuid = Uuid();

// Tao enum Category danh sach cac gia tri hang so khong doi
enum Category { travel, work, leisure, food }

// Tao map categoryIcons (key: enum, values: icon)
final categoryIcons = {
  Category.food: Icons.food_bank,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight,
  Category.work: Icons.work,
};

// Khoi tao doi tuong dateformat
final formatter = DateFormat.yMd();

//Tao lop expense
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  String get formattedDate {
    return formatter.format(date);
  }
}
