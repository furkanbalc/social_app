import 'package:flutter/material.dart';

abstract class OnboardViewModel extends ChangeNotifier {
  /// current page
  int get currentPage;

  /// set current page
  set currentPage(int value);

  /// is last page
  bool get isLastPage;
}
