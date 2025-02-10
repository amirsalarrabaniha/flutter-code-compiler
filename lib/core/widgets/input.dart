import 'package:code_editor/core/resource/my_colors.dart';
import 'package:code_editor/core/resource/typography.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String? hint, title;
  Widget? icon, rightIcon;
  TextEditingController? controller;
  int lines;
  double? fontSize, height;
  bool isPassword;
  final ValueChanged<String>? onChanged;

  Input(
      {this.hint,
      this.title,
      this.icon,
      this.onChanged,
      this.rightIcon,
      this.controller,
      this.fontSize = 15,
      this.lines = 1,
      this.isPassword = false,
      this.height = 48,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Text(
              title ?? '',
              style: Text700Style.h6,
            ),
          ),
        Container(
          height: lines > 1 ? null : height,
          decoration: BoxDecoration(
              color: MyColors.strokeMain,
              border: Border.all(color: MyColors.strokeMain, width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: TextField(
            controller: controller,
            obscureText: isPassword,
            obscuringCharacter: '*',
            style: CustomTextStyle.body2.copyWith(fontSize: fontSize),
            onChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: lines > 1 ? 20 : 0),
              prefixIcon: rightIcon == null
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: rightIcon!,
                    ),
              suffixIcon: icon == null
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: icon!,
                    ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: MyColors.noColor, width: 1.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: MyColors.noColor, width: 1.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              hintText: hint ?? '',
              hintStyle: Text500Style.h7.copyWith(fontSize: fontSize),
            ),
            maxLines: lines,
          ),
        ),
      ],
    );
  }
}
