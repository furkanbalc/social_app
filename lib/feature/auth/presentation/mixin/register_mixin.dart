part of '../views/register.dart';

mixin RegisterMixin on ConsumerState<RegisterView> {
  late AuthViewModel authViewModel;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    authViewModel = ref.read(authViewModelImp);
  }

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> register() async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      await authViewModel.register(
        username: userNameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      if (mounted) {
        if (authViewModel.registerResponse.status == Status.completed &&
            authViewModel.registerResponse.data.isSuccess) {
          context.goNamed(AppRouteNames.home.name);
        } else {
          AppSnackbar.showError(context, authViewModel.registerResponse.message);
        }
      }
    }
  }
}
