import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';

class LoginScreenTemplate extends StatelessWidget {
  final Widget backgroundImage;
  final Widget logo;
  final List<Widget> form;
  final Widget copyRightVersion;
  final EdgeInsetsGeometry formPadding;
  final EdgeInsetsGeometry formMargin;
  final EdgeInsetsGeometry outsideFormMargin;
  final EdgeInsetsGeometry logoPadding;
  final AlignmentGeometry formAlignment;
  final Color formColor;
  final Color headerColor;

  /// Setting header height. Number representation heigth screen.
  /// Example if you set 2 , it will consume 1/2 screen height
  final double headerHeight;
  final BorderRadiusGeometry formRadius;

  LoginScreenTemplate({
    this.formAlignment = Alignment.center,
    this.formColor = Colors.white,
    this.headerColor = Colors.transparent,
    this.formPadding = const EdgeInsets.all(14.0),
    this.formMargin = const EdgeInsets.all(14.0),
    this.logoPadding = const EdgeInsets.all(8.0),
    this.headerHeight = 3.0,
    this.outsideFormMargin,
    this.backgroundImage,
    this.formRadius,
    @required this.logo,
    @required this.form,
    @required this.copyRightVersion,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned.fill(
          child: backgroundImage ??
              Container(
                color: colorPallete.primaryColor,
              ),
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: sizes.height(context),
            child: Padding(
              padding: EdgeInsets.only(
                top: sizes.statusBarHeight(context),
                bottom: sizes.statusBarHeight(context) * 2,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    color: headerColor,
                    constraints: BoxConstraints(
                      minHeight: sizes.height(context) / 6,
                      maxHeight: sizes.height(context) / (headerHeight),
                    ),
                    child: Padding(
                      padding: logoPadding,
                      child: logo ?? FlutterLogo(size: sizes.width(context) / 3.5),
                    ),
                  ),
                  Container(
                    alignment: formAlignment,
                    margin: outsideFormMargin,
                    child: Card(
                      color: formColor,
                      margin: formMargin,
                      shape: RoundedRectangleBorder(
                        borderRadius: formRadius ?? BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: formPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: form,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: KeyboardVisibilityBuilder(
            builder: (context, child, isKeyboardVisible) {
              if (isKeyboardVisible) {
                return SizedBox();
              } else {
                return copyRightVersion;
              }
            },
            child: copyRightVersion,
          ),
        )
      ],
    );
  }
}

class LoginButtonGroup extends StatelessWidget {
  final VoidCallback onTapButton1;
  final VoidCallback onTapButton2;

  final String textButton1;
  final String textButton2;

  LoginButtonGroup({
    @required this.onTapButton1,
    @required this.onTapButton2,
    this.textButton1,
    this.textButton2,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: FittedBox(child: Text(textButton1 ?? 'Button 1')),
              onPressed: onTapButton1 ?? () {},
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: FittedBox(child: Text(textButton2 ?? 'Button 2')),
              onPressed: onTapButton2 ?? () {},
            ),
          ),
        ),
      ],
    );
  }
}
