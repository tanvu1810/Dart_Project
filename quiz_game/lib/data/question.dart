import 'package:quiz_game/models/quiz_question.dart';

// Tạo một danh sách chứa đối tượng QuizQuestion
const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Những thành phần chính để xây dựng giao diện người dùng trong Flutter là gì?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'Làm thế nào để xây dựng giao diện người dùng trong Flutter?',
    [
      'Bằng cách kết hợp các widget trong mã nguồn',
      'Bằng cách sử dụng trình chỉnh sửa giao diện trực quan',
      'Bằng cách định nghĩa các widget trong các tệp cấu hình',
      'Bằng cách sử dụng XCode cho iOS và Android Studio cho Android',
    ],
  ),
  QuizQuestion(
    'Mục đích của StatefulWidget là gì?',
    [
      'Cập nhật giao diện người dùng khi dữ liệu thay đổi',
      'Cập nhật dữ liệu khi giao diện người dùng thay đổi',
      'Bỏ qua các thay đổi của dữ liệu',
      'Render giao diện người dùng không phụ thuộc vào dữ liệu',
    ],
  ),
  QuizQuestion(
    'Bạn nên sử dụng loại widget nào thường xuyên hơn: StatelessWidget hay StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Cả hai đều tốt như nhau',
      'Không có lựa chọn nào đúng',
    ],
  ),
  QuizQuestion(
    'Điều gì xảy ra nếu bạn thay đổi dữ liệu trong một StatelessWidget?',
    [
      'Giao diện người dùng không được cập nhật',
      'Giao diện người dùng được cập nhật',
      'Widget Stateful gần nhất sẽ được cập nhật',
      'Bất kỳ StatefulWidget lồng nhau nào cũng sẽ được cập nhật',
    ],
  ),
  QuizQuestion(
    'Bạn nên cập nhật dữ liệu bên trong StatefulWidgets như thế nào?',
    [
      'Bằng cách gọi phương thức setState()',
      'Bằng cách gọi phương thức updateData()',
      'Bằng cách gọi phương thức updateUI()',
      'Bằng cách gọi phương thức updateState()',
    ],
  ),
];
