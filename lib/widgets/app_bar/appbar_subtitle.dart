import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({Key? key, required this.text, this.margin, this.onTap}) : super(key: key);

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtManropeExtraBold18.copyWith(
            letterSpacing: getHorizontalSize(
              0.2,
            ),
            color: ColorConstant.gray900,
          ),
        ),
      ),
    );
  }
}
