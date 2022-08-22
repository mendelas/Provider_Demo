import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String ikenoText = 'ikenoさんはかっこいい';

  void changeikenoText(){
    ikenoText = 'ikenoさんはお調子者';
    notifyListeners();
  }
}