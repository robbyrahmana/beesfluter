import 'package:flutter/foundation.dart';

class LoaderProvider with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setIsLoading(bool val) {
    _isLoading = val;
    notifyListeners();
  }
}
