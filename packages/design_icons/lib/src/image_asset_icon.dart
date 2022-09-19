import 'package:flutter/material.dart';

///
class ImageAssetIcon extends Image {
  ///
  ImageAssetIcon.asset(
    super.assetName, {
    String super.package = 'design_icons',
    super.width,
    super.height,
    BoxFit super.fit = BoxFit.contain,
    super.color,
    super.key,
  }) : super.asset();
}
