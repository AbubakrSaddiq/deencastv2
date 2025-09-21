import 'package:flutter/cupertino.dart';

import '../../utils/constants/sizes.dart';

class DSpacingStyle {
  static final EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: DSizes.appBarHeight,
    left: DSizes.defaultSpace,
    right: DSizes.defaultSpace,
    bottom: DSizes.defaultSpace,
  );
}