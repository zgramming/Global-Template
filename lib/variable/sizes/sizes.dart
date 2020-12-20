import 'package:flutter/material.dart';

enum TypeLayout { Mobile, LargeMobile, Tablet, Laptop, Desktop }

const MobileSize = 600, LargeMobileSize = 768, TabletSize = 992, LaptopSize = 1200;

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

  TypeLayout checkLayoutBuilder(double width) {
    TypeLayout typeLayout;
    if (width < 600) {
      typeLayout = TypeLayout.Mobile;
    } else if (width > 600 && width < 768) {
      typeLayout = TypeLayout.LargeMobile;
    } else if (width > 768 && width < 992) {
      typeLayout = TypeLayout.Tablet;
    } else if (width > 992 && width < 1200) {
      typeLayout = TypeLayout.Laptop;
    } else if (width > 1200) {
      typeLayout = TypeLayout.Desktop;
    }
    return typeLayout;
  }

  double responsiveSize(BuildContext context) => width(context) / 100;

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
