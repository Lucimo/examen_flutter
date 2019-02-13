import 'package:flutter_examen/Data.dart';

abstract class HomeView {
  openSettingsScreen(int position);

  showUsers(List<Data> users);

  showLoading();

  hideLoading();

  showError();
}
