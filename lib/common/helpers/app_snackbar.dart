import 'package:flutter/material.dart';
import 'package:social_app/common/widgets/text/custom_text.dart';

enum SnackbarType {
  success,
  error,
  info,
  warning,
}

class AppSnackbar {
  AppSnackbar._();

  static void showSnackBar(
    BuildContext context,
    String message, {
    SnackbarType type = SnackbarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(
            _getIcon(type),
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: CustomText(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: _getBackgroundColor(type),
      behavior: SnackBarBehavior.floating,
      duration: duration,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(16),
      elevation: 4,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static IconData _getIcon(SnackbarType type) {
    switch (type) {
      case SnackbarType.success:
        return Icons.check_circle_outline;
      case SnackbarType.error:
        return Icons.error_outline;
      case SnackbarType.info:
        return Icons.info_outline;
      case SnackbarType.warning:
        return Icons.warning_amber_outlined;
    }
  }

  static Color _getBackgroundColor(SnackbarType type) {
    switch (type) {
      case SnackbarType.success:
        return Colors.green;
      case SnackbarType.error:
        return Colors.red;
      case SnackbarType.info:
        return Colors.blue;
      case SnackbarType.warning:
        return Colors.orange;
    }
  }

  // Convenience methods
  static void showSuccess(BuildContext context, String message) {
    showSnackBar(context, message, type: SnackbarType.success);
  }

  static void showError(BuildContext context, String message) {
    showSnackBar(context, message, type: SnackbarType.error);
  }

  static void showInfo(BuildContext context, String message) {
    showSnackBar(context, message, type: SnackbarType.info);
  }

  static void showWarning(BuildContext context, String message) {
    showSnackBar(context, message, type: SnackbarType.warning);
  }
}
