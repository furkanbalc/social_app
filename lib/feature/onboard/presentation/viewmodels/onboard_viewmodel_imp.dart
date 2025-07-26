import 'package:flutter/material.dart';
import 'package:social_app/feature/onboard/data/models/onboard_model.dart';
import 'package:social_app/feature/onboard/presentation/viewmodels/onboard_viewmodel.dart';

class OnboardViewModelImpl extends ChangeNotifier implements OnboardViewModel {
  int _currentPage = 0;

  @override
  int get currentPage => _currentPage;

  @override
  bool get isLastPage => _currentPage == OnBoardingItems().onBoarditems.length - 1;

  @override
  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }
}
