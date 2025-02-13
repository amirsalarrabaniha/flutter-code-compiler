import 'package:flutter/material.dart';

class ClickableContainer extends StatelessWidget {
  const ClickableContainer(
      {Key? key,
      required this.child,
      this.color,
      this.width,
      this.height,
      this.gradient,
      this.border,
      this.padding,
      this.margin,
      this.borderRadius,
      this.onTap,
      this.alignment,
      this.shape,
      this.constraints,
      this.boxShadow})
      : super(key: key);

  final Widget child;
  final Color? color;
  final Gradient? gradient;
  final BorderRadiusGeometry? borderRadius;
  final BoxShadow? boxShadow;
  final EdgeInsetsGeometry? margin;
  final Function()? onTap;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final Alignment? alignment;
  final BoxShape? shape;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      constraints: constraints,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: borderRadius,
        shape: shape ?? BoxShape.rectangle,
        border: border,
        boxShadow: boxShadow == null ? null : [boxShadow!],
      ),
      child: Material(
        color: Colors.transparent,
        child: onTap == null
            ? InkWell(
                borderRadius: borderRadius?.resolve(Directionality.of(context)),
                child: Container(
                  padding: padding,
                  alignment: alignment,
                  child: child,
                ),
              )
            : InkWell(
                onTap: () => onTap!(),
                borderRadius: borderRadius?.resolve(Directionality.of(context)),
                child: Container(
                  padding: padding,
                  alignment: alignment,
                  child: child,
                ),
              ),
      ),
    );
  }
}
