import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int selectOffresId = 0;
  void updateCategoryId(int selectedCategoryId) {
    this.selectOffresId = selectedCategoryId;
    notifyListeners();
  }
}
