import 'dart:convert';

import 'package:flutter_examen/Data.dart';
import 'package:flutter_examen/Home/HomeView.dart';

import 'package:http/http.dart' as network;

class HomePresenter {
  HomeView _view;

  HomePresenter(this._view);

  fetchData() async {
    _view.showLoading();
    network.Response response =
        await network.get('https://opentdb.com/api.php?amount=10');
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      List<Data> users = jsonBody['results'].map<Data>((element) {
        String question = element['question'];
        String correct_answer = element['correct_answer'];
        List<String> incorrect_answers = new List<String>();

        List incorrect = element['incorrect_answers'];
        for (int i = 0; i < incorrect.length; i++) {
          incorrect_answers.add(element['incorrect_answers'][i]);
        }

        return Data(question, correct_answer, incorrect_answers);
      }).toList();

      _view.showUsers(users);
    } else {
      _view.showError();
    }
    _view.hideLoading();
  }

  elementClicked(int position) {
    _view.openSettingsScreen(position);
  }
}
