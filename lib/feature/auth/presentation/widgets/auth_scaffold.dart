import 'package:flutter/material.dart';
import 'package:social_app/common/widgets/loading/custom_loading_widget.dart';
import 'package:social_app/core/enums/auth_method.dart';
import 'package:social_app/core/extensions/context_padding.dart';
import 'package:social_app/core/extensions/context_size.dart';
import 'package:social_app/feature/auth/presentation/widgets/bubble_widget.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    super.key,
    required this.body,
    this.isLoading = false,
    required this.authMethod,
    required this.formKey,
  });
  final Widget body;
  final bool? isLoading;
  final AuthMethod authMethod;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Stack(
            children: [
              /// Bubble Widget
              BubbleWidget(authMethod: authMethod),

              /// Safe Area
              SafeArea(
                child: Padding(
                  padding: context.paddings.horizontalMedium1,
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
                      child: Column(
                        children: [
                          SizedBox(height: context.getAppBarHeight()),
                          body,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isLoading == true) const CustomLoadingWidget(),
      ],
    );
  }
}
