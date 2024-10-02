class QuizQuestion {
  const QuizQuestion(
    this.text,
    this.answers,
  );
  final String text; // Thuộc tính chứa câu hỏi
  final List<String> answers; // Thuộc tính chứa danh sách các câu trả lời
  // Hàm trả về danh sách câu trả lời được hoán đổi
  List<String> getShuffledAnswers() {
    final shuffleList = List.of(
        answers); // Sao chép ra một danh sách khác để tránh làm thay đổi đáp án ở danh sách ban đầu
    shuffleList.shuffle(); // Tráo đổi nội dung trong danh sách mới
    return shuffleList; // Trả về danh sách đã tráo đổi
  }
}
