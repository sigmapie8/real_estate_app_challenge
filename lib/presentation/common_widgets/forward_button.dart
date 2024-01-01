import 'package:flutter/material.dart';
import 'package:real_estate_app_challenge/presentation/theme/app_theme.dart';

class ForwardButton extends StatelessWidget {
  const ForwardButton(
      {Key? key,
      required this.borderRadius,
      required this.onTap,
      required this.text,
      this.icon})
      : super(key: key);

  final double borderRadius;
  final void Function()? onTap;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: AppTheme.primaryColor,
        padding: EdgeInsets.zero,
        maximumSize: const Size(150, 35),
        minimumSize: const Size(50, 35),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      child: (icon != null)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  text,
                  style: AppTheme.bodyStyle.copyWith(color: Colors.white),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 35.0,
                )
              ],
            )
          : Text(
              text,
              style: AppTheme.bodyStyle.copyWith(color: Colors.white),
            ),
    );
  }
}
