import 'package:dotted_border/dotted_border.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldWidget extends ConsumerWidget {
  const TextFormFieldWidget({
    required this.hintText,
    super.key,
  });

  final String hintText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = Theme.of(context).colorScheme.secondary;
    final hintTextColor = Theme.of(context).colorScheme.onSurface.withOpacity(0.5);

    return DottedBorder(
      strokeWidth: 2,
      color: hintTextColor,
      borderType: BorderType.RRect,
      dashPattern: const [5, 5],
      child: SizedBox(
        width: 80.w,
        child: TextFormField(
          cursorColor: textColor,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: ES.textStyle.medium(
              fontWeight: FontWeight.bold,
              color: hintTextColor,
            ),
          ),
          style: ES.textStyle.medium(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
