import "package:cars_reviewer/services/autostate.dart";
import 'package:flutter/foundation.dart';

class BaseModel extends ChangeNotifier {
  AutoState _autoState = AutoState.init;
  AutosListState _autosListState = AutosListState.init;
  AutoState get state => _autoState;
  AutosListState get listState => _autosListState;
  void setState(AutoState value) {
    _autoState = value;
    notifyListeners();
  }

  void setListState(AutosListState value) {
    _autosListState = value;
    notifyListeners();
  }
}
