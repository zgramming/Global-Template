import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    Key key,
    this.logo,
    this.title = 'Example Title',
    this.subtitle = 'Example Subtitle , Example Subtitle , Example Subtitle ',
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  final Widget logo;
  final String title;
  final String subtitle;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 8,
          child: Center(
            child: logo ??
                Icon(
                  Icons.design_services,
                  size: sizes.width(context),
                ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              title,
              style: titleStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: subtitleStyle,
          ),
        ),
      ],
    );
  }
}
