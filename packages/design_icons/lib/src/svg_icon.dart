import 'package:flutter_svg/flutter_svg.dart';

///
class SvgIcon extends SvgPicture {
  ///
  SvgIcon.asset(
    super.assetName, {
    String super.package = 'design_icons',
    super.width,
    super.height,
    super.color,
    super.fit,
    super.key,
  }) : super.asset();
}
