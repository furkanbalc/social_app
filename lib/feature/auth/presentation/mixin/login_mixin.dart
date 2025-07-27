part of '../views/login.dart';

mixin LoginMixin on ConsumerState<LoginView> {
  late AuthViewModel authViewModel;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    authViewModel = ref.read(authViewModelImp);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> login() async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      await authViewModel.login(
        email: emailController.text,
        password: passwordController.text,
      );
      if (mounted) {
        if (authViewModel.loginResponse.status == Status.completed && authViewModel.loginResponse.data.isSuccess) {
          context.goNamed(AppRouteNames.home.name);
        } else {
          AppSnackbar.showError(context, authViewModel.loginResponse.message);
        }
      }
    }
  }
}
