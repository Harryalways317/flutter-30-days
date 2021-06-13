import 'package:http/http.dart' as http;

class QuizUtility {
  String url =
      "https://opentdb.com/api.php?amount=10&category=18&difficulty=medium&type=boolean";

  Future<http.Response> fetchQuestions() {
    return http.get(Uri.parse(url));
  }
}
