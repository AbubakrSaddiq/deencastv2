import 'package:flutter/material.dart';

class AudioPlayerProvider extends ChangeNotifier {
  bool _isActive = false;
  String _title = "";
  String _date = "";
  String _image = "";

  bool get isActive => _isActive;
  String get title => _title;
  String get date => _date;
  String get image => _image;

  void showPlayer({required String title, required String date, required String image}) {
    _isActive = true;
    _title = title;
    _date = date;
    _image = image;
    notifyListeners();
  }

  void hidePlayer() {
    _isActive = false;
    notifyListeners();
  }
}
