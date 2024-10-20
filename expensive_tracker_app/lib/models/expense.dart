import 'package:flutter/material.dart'; // Cung cấp các widget và công cụ giao diện người dùng
import 'package:uuid/uuid.dart'; // Tạo id duy nhất cho mỗi chi phí
import 'package:intl/intl.dart'; // Định dạng ngày tháng

const uuid = Uuid(); // Khởi tạo đối tượng Uuid() từ thư viện uuid

// Tạo ra một danh sách hằng số cố định
enum CateGory { travel, work, leisure, food }

// Tạo map categoryIcons (key: CateGory, value: icons)
const categoryIcons = {
  CateGory.food: Icons.food_bank_outlined,
  CateGory.leisure: Icons.movie,
  CateGory.travel: Icons.flight,
  CateGory.work: Icons.work,
};

// Tạo ra đối tượng DateFormat để định dạng ngày tháng
final formatter = DateFormat.yMd();

class Expense {
  Expense(
      {
      // Các Tham số đặt tên
      required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // Tạo ra một ID duy nhất cho mỗi đối tượng
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final CateGory category;

  String get formattedDate {
    return formatter.format(date);
  }
}
