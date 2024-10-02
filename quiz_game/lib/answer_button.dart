import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    // Đặt thành 2 tham số đặt tên để dễ gọi không phải nhớ vị trí của từng thuộc tính
    required this.answerText,
    required this.onTap,
  });
  // Hàm ẩn danh onTap để truyền vào lớp questionscreen khi ấn nút thì hàm này sẽ được gọi
  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Tạo sizeBox để chứa button có kích thước giống nhau
      height: 60,
      child: Container(
        // Căn chỉnh khoảng cách giữa các button (các khối)
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: ElevatedButton(
          onPressed: onTap,
          child: Container(
            // Căn chỉnh nội dung bên trong button
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
            ),
            child: Text(
              answerText,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
