import 'package:flutter/material.dart';
import 'package:meeting_room_app/app/themes/app_colors.dart';
import 'package:meeting_room_app/app/themes/app_text_theme.dart';
import 'package:meeting_room_app/app/utils/widgets/app_button/base_button.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.onPressed,
    this.text,
    this.color = AppColors.kPrimaryColor,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.space = 12,
    this.height = 48,
    this.width = double.infinity,
    this.borderRadius,
  }) {
    isOutline = false;
  }

  AppButton.outline({
    super.key,
    required this.onPressed,
    this.text,
    this.color = AppColors.kPrimaryColor,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.space = 12,
    this.height = 48,
    this.width = double.infinity,
    this.borderRadius,
  }) {
    isOutline = true;
  }

  late final bool isOutline;
  final String? text;
  final VoidCallback? onPressed;
  final Color color;
  final TextStyle? style;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double space;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    TextStyle style = AppTextStyles.base.w500.s16.whiteColor;
    return Padding(
      padding: margin,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(48),
        child: BaseButton(
          onPressed: onPressed,
          color: isOutline ? AppColors.transparent : color,
          child: Container(
            height: height,
            width: width,
            padding: padding,
            decoration: BoxDecoration(
              border: Border.all(
                color: onPressed != null ? color : color.withOpacity(0.4),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (prefixIcon != null)
                  Padding(
                    padding: EdgeInsets.only(right: text == null ? 0 : space),
                    child: prefixIcon!,
                  ),
                if (text != null)
                  Text(
                    text ?? "",
                    style: isOutline ? style.copyWith(color: color) : style,
                  ),
                if (suffixIcon != null)
                  Padding(
                    padding: EdgeInsets.only(right: text == null ? 0 : space),
                    child: suffixIcon!,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
