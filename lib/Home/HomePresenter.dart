import 'dart:convert';

import 'package:flutter_examen/Home/HomeView.dart';
import 'package:http/http.dart' as http;

/*class HomePresenter {
  HomeView _view;

  HomePresenter(this._view);

  Future<Post> fetchPost() async {
    final response =
    await http.get('https://opentdb.com/api.php?amount=10');

    if (response.statusCode == 200) {
      print("hay conexion");
      // If the call to the server was successful, parse the JSON
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

}
class Post {
  final int results;
  final String question;
  final String correct_answer;
  final String incorrect_answers;

  Post({this.results, this.question, this.correct_answer, this.incorrect_answers});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      results: json['results'],
      question: json['question'],
      correct_answer: json['correct_answer'],
      incorrect_answers: json['incorrect_answers'],
    );
  }
}
*/