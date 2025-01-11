import 'package:flutter/material.dart';
import 'package:weatherapp/core/theme/app_colors.dart';

class PermissionDialog extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String title;
  final String subTitle;
  final String negativeBtnLabel;
  final String positiveBtnLabel;
  final VoidCallback? onDialogClosed;
  final Color? iconColor;

  const PermissionDialog._({
    required this.onPressed,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.negativeBtnLabel,
    required this.positiveBtnLabel,
    this.onDialogClosed,
    this.iconColor,
  });

  static Future<void> showLocationPermissionDialog(
    BuildContext context, {
    required VoidCallback onPressed,
    required String negativeBtnLabel,
    required String positiveBtnLabel,
    String? title,
    String? subtitle,
  }) {
    return _showPermissionDialog(
      context,
      onPressed: onPressed,
      icon: Icons.fmd_good_rounded,
      title: title ?? 'Allow \"Weather App\" to access your location?',
      subTitle: subtitle ??
          'Please go to Settings › Privacy & Security › Location Services › TipTip, then allow the location access and try again.',
      negativeBtnLabel: negativeBtnLabel,
      positiveBtnLabel: positiveBtnLabel,
      iconColor: AppColors.colorPrimary,
    );
  }

  static Future<T?> _showPermissionDialog<T>(
    BuildContext context, {
    required VoidCallback onPressed,
    required IconData icon,
    required String title,
    required String subTitle,
    required String negativeBtnLabel,
    required String positiveBtnLabel,
    VoidCallback? onDialogClosed,
    Color? iconColor,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return PermissionDialog._(
          onPressed: onPressed,
          icon: icon,
          title: title,
          subTitle: subTitle,
          negativeBtnLabel: negativeBtnLabel,
          positiveBtnLabel: positiveBtnLabel,
          onDialogClosed: onDialogClosed,
          iconColor: iconColor,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return AlertDialog(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Icon(
            icon,
            color: iconColor ?? AppColors.colorPrimary,
            size: 32,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: appTextTheme.bodyLarge,
          ),
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 85,
                child: OutlinedButton(
                  onPressed: () {
                    onDialogClosed?.call();
                    Navigator.of(context).pop();
                  },
                  child: Text(negativeBtnLabel),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 85,
                child: ElevatedButton(
                  onPressed: () {
                    onDialogClosed?.call();
                    Navigator.of(context).pop();
                    onPressed();
                  },
                  child: Text(positiveBtnLabel),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
