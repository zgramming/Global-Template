import 'package:flutter/material.dart';

enum TypeLayout { Mobile, LargeMobile, Tablet, Laptop, Desktop }

class SizesDevice {
  MediaQueryData mediaQuery(BuildContext context) => MediaQuery.of(context);

  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double height(BuildContext context) => MediaQuery.of(context).size.height;

  double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;

  double screenHeightMinusAppBar(BuildContext context) => sizes.height(context) - kToolbarHeight;

  double screenHeightMinusStatusBar(BuildContext context) =>
      sizes.height(context) - statusBarHeight(context);

  double screenHeightMinusAppBarMinusStatusBar(BuildContext context) =>
      sizes.height(context) - kToolbarHeight - statusBarHeight(context);

  double keyboardHeight(BuildContext context) => MediaQuery.of(context).viewInsets.bottom;

  // double smallestDimension(BuildContext context) => MediaQuery.of(context).size.shortestSide;
  MediaQueryData smallestDimension(BuildContext context) =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  bool isMobileLayout(BuildContext context) => smallestDimension(context).size.shortestSide < 600;

  TypeLayout checkLayoutBuilder(BoxConstraints constraints) {
    final maxWidth = constraints.maxWidth;
    TypeLayout typeLayout;
    if (maxWidth < 600) {
      typeLayout = TypeLayout.Mobile;
    } else if (maxWidth > 600 && maxWidth < 768) {
      typeLayout = TypeLayout.LargeMobile;
    } else if (maxWidth > 768 && maxWidth < 992) {
      typeLayout = TypeLayout.Tablet;
    } else if (maxWidth > 992 && maxWidth < 1200) {
      typeLayout = TypeLayout.Laptop;
    } else if (maxWidth > 1200) {
      typeLayout = TypeLayout.Desktop;
    }
    return typeLayout;
  }

  double dp4(BuildContext context) => MediaQuery.of(context).size.width / 100;
  double dp6(BuildContext context) => MediaQuery.of(context).size.width / 70;
  double dp8(BuildContext context) => MediaQuery.of(context).size.width / 54;
  double dp10(BuildContext context) => MediaQuery.of(context).size.width / 41;
  double dp12(BuildContext context) => MediaQuery.of(context).size.width / 34;
  double dp14(BuildContext context) => MediaQuery.of(context).size.width / 29;
  double dp16(BuildContext context) => MediaQuery.of(context).size.width / 26;
  double dp18(BuildContext context) => MediaQuery.of(context).size.width / 23;
  double dp20(BuildContext context) => MediaQuery.of(context).size.width / 20;
  double dp22(BuildContext context) => MediaQuery.of(context).size.width / 17;
  double dp24(BuildContext context) => MediaQuery.of(context).size.width / 16;
  double dp25(BuildContext context) => MediaQuery.of(context).size.width / 15;
}

final sizes = SizesDevice();
