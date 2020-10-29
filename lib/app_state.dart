import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int selectOffres = 0;
  void updateselectOffresId(int selectOffresIdId) {
    this.selectOffres = selectOffresIdId;
    notifyListeners();
  }
}
