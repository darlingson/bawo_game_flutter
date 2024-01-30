import 'dart:async';
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Map<int, Color> _pitColors = {}; // Map to store pit colors
  Map<int, bool> _pitTappedStates = {}; // Map to track pit tapped state

  Color getPitColor(int index) {
    return _pitColors[index] ?? Colors.blue; // Return color or default to blue
  }

  bool isPitTapped(int index) {
    return _pitTappedStates[index] ??
        false; // Return tapped state or default to false
  }

  void handlePitTap(int index) {
    // Change the color when the pit is clicked
    _pitColors[index] = Colors.red;
    _pitTappedStates[index] = true;
    notifyListeners();

    // Timer to revert the color and tapped state back to original after 2 seconds (adjust as needed)
    Timer(Duration(seconds: 2), () {
      _pitColors[index] = Colors.blue;
      _pitTappedStates[index] = false;
      notifyListeners();
    });

    // Add your additional logic here for handling the pit tap
    print('Pit $index has been clicked!');
  }
}
