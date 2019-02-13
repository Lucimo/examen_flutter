import 'dart:convert';

Post postFromJson(String str) {
  final jsonData = json.decode(str);
  return Post.fromJson(jsonData);
}

String postToJson(Post data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

List<Post> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Post>.from(jsonData.map((x) => Post.fromJson(x)));
}

String allPostsToJson(List<Post> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class Post {
  int results;
  String question;
  String correct_answer;
  String incorrect_answers;
  String category;

  Post({
    this.results,
    this.question,
    this.correct_answer,
    this.incorrect_answers,
    this.category,
  });

  factory Post.fromJson(Map<String, dynamic> json) => new Post(
      results: json["results"],
      question: json["question"],
      correct_answer: json["correct_answer"],
      incorrect_answers: json["inscorrect_answers"],
      category: json["category"]);

  Map<String, dynamic> toJson() => {
        "results": results,
        "question": question,
        "correct_answer": correct_answer,
        "incorrect_answer": incorrect_answers,
        "category": category,
      };
}
