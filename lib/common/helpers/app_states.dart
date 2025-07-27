import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/feature/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:social_app/feature/auth/presentation/viewmodels/auth_viewmodel_imp.dart';
import 'package:social_app/feature/onboard/presentation/viewmodels/onboard_viewmodel.dart';
import 'package:social_app/feature/onboard/presentation/viewmodels/onboard_viewmodel_imp.dart';

final onboardViewModelImp = ChangeNotifierProvider<OnboardViewModel>((ref) => OnboardViewModelImpl());
final authViewModelImp = ChangeNotifierProvider<AuthViewModel>((ref) => AuthViewModelImp());
