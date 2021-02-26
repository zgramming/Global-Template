import 'dart:async';

import 'package:flutter/material.dart';
import 'package:global_template/global_template.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({
    Key key,
    @required this.items,
    this.backgroundColorCircleIndicator = Colors.white,
    this.valueColorCircleIndicator = Colors.green,
    this.sizeCircleIndicator = 80.0,
    this.strokeCircleIndicator = 10.0,
    this.onPageChanged,
    this.onClickNext,
    this.onClickSkip,
    this.backgroundOnboarding,
    this.iconSkip,
    this.iconNext,
    this.iconFinish,
  }) : super(key: key);

  /// Background color circle progress indicator
  final Color backgroundColorCircleIndicator;

  /// Value color circle progress indicator
  final Color valueColorCircleIndicator;

  /// Setting size circle progress indicator
  final double sizeCircleIndicator;

  /// Stroke circle progress indicator
  final double strokeCircleIndicator;

  /// Items OnboardingItem
  final List<OnboardingItem> items;

  /// On pagechanged
  final ValueChanged<int> onPageChanged;

  /// On next click
  final ValueChanged<int> onClickNext;

  /// Trigger when skip click
  final VoidCallback onClickSkip;

  /// Background Onboarding
  final Widget backgroundOnboarding;

  /// Skip Widget on Top Right
  final Widget iconSkip;

  /// Next Widget
  final Widget iconNext;

  /// Finish Widget
  final Widget iconFinish;

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();

  int indexPage = 0;
  double progressIndicator = 0.0;

  double fixedIncrease = 0.0;

  bool disabledOnPageChanged = false;

  @override
  void initState() {
    fixedIncrease = (100.0 / widget.items.length - indexPage) / 100.0;
    progressIndicator = fixedIncrease;
    super.initState();
  }

  void _onClickNext() {
    setState(() => disabledOnPageChanged = true);
    _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeOut);

    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        indexPage++;
        progressIndicator += fixedIncrease;
        disabledOnPageChanged = false;
      });
    });

    widget.onClickNext(indexPage);
  }

  void _onClickFinish() {}

  void _onPageChanged(int index) {
    if (disabledOnPageChanged == false) {
      setState(() {
        if (index < indexPage) {
          progressIndicator -= fixedIncrease;
        } else {
          progressIndicator += fixedIncrease;
        }
        indexPage = index;
      });
    }

    widget.onPageChanged(indexPage);
  }

  void _onClickSkip() {
    setState(() => disabledOnPageChanged = true);
    final lastIndexPage = widget.items.length - 1;

    _pageController.animateToPage(
      lastIndexPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );

    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        progressIndicator = 1;
        indexPage = widget.items.length - 1;
        disabledOnPageChanged = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (widget.backgroundOnboarding == null)
          Container(
            padding: EdgeInsets.only(top: sizes.statusBarHeight(context)),
            color: colorPallete.primaryColor,
          ),
        SizedBox.expand(
          child: Padding(
            padding: EdgeInsets.only(top: sizes.statusBarHeight(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: PageView.builder(
                    controller: _pageController,
                    physics: const ClampingScrollPhysics(),
                    itemCount: (widget.items?.length) ?? 3,
                    onPageChanged: _onPageChanged,
                    itemBuilder: (context, index) {
                      return widget.items[index];
                    },
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          height: widget.sizeCircleIndicator,
                          width: widget.sizeCircleIndicator,
                          child: TweenAnimationBuilder(
                            duration: const Duration(seconds: 1),
                            curve: Curves.decelerate,
                            tween: Tween<double>(
                              begin: progressIndicator,
                              end: progressIndicator,
                            ),
                            builder: (context, double value, _) {
                              return CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(widget.valueColorCircleIndicator),
                                value: value,
                                backgroundColor: widget.backgroundColorCircleIndicator,
                                strokeWidth: widget.strokeCircleIndicator,
                              );
                            },
                          ),
                        ),
                      ),
                      if (disabledOnPageChanged)
                        const Center(child: CircularProgressIndicator())
                      else
                        InkWell(
                          onTap: (indexPage == widget.items.length - 1)
                              ? () => _onClickFinish()
                              : () => _onClickNext(),
                          child: Center(
                            child: AnimatedSwitcher(
                              duration: const Duration(seconds: 1),
                              child: (indexPage == widget.items.length - 1)
                                  ? widget.iconNext ?? Text('Finish', key: UniqueKey())
                                  : widget.iconFinish ?? Text('Next', key: UniqueKey()),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (indexPage != widget.items.length - 1)
          Positioned(
            top: sizes.statusBarHeight(context) * 1.5,
            right: sizes.width(context) / 20,
            child: InkWell(
              onTap: () => _onClickSkip(),
              child: widget.iconSkip ??
                  Text(
                    'Skip',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
            ),
          ),
      ],
    );
  }
}
