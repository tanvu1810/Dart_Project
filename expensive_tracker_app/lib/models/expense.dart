// Cai dat thu vien tu sinh id va dinh dang ngay thang
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

//Khoi tao doi tuong uuid
const uuid = Uuid();

// Khai bao lop enum Category danh sach cac hang so khong doi
enum Category { travel, food, leisure, work }

//Khoi tao doi tuong fomatter
final fomatter = DateFormat.yMd();

//Tao map categoryIcons
const categoryIcons = {
  Category.food: Icons.food_bank,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight,
  Category.work: Icons.work,
};

// Tao lop expense
class Expense {
  // Ham khoi tao co doi
  Expense({
    required this.amount,
    required this.date,
    required this.category,
    required this.title,
  }) : id = uuid.v4();
  // Khai bao cac thuoc tinh
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  // Ham getter tra ve gia tri ngay thang da duoc dinh dang
  String get formatedDate {
    return fomatter.format(date);
  }
}
