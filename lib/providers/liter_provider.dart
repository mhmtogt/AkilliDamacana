import 'package:flutter/foundation.dart';

class LiterProvider with ChangeNotifier {
  int _boy = 0;

  int get boy => _boy;

  int get liter => _boy * 10;

  void updateBoy(int newBoy) {
    _boy = newBoy;
    notifyListeners();
  }
}
