import 'package:flutter/material.dart';
import 'package:untitled/my_custom_route/enums/break_point.dart';
import 'package:untitled/my_custom_route/my_custom_widget.dart';
import 'package:untitled/my_custom_route/pages/blue_page.dart';
import 'package:untitled/my_custom_route/pages/yellow_page.dart';

import 'pages/green_page.dart';
import 'pages/red_page.dart';
import 'widget_custom_enum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  double widthPage(BuildContext context) => MediaQuery.sizeOf(context).width;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _contentBody(context),
      );

  Widget _contentBody(BuildContext context) {
    if (widthPage(context) < BreakPoint.small.value) {
      return _contentBodyForSmallScreen(context);
    } else if (widthPage(context) > BreakPoint.small.value &&
        widthPage(context) < BreakPoint.large.value) {
      return _contentBodyForMediumScreen(context);
    }

    return _contentBodyForLargeScreen(context);
  }

  Widget _contentBodyForSmallScreen(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyCustomWidget(
            enumValue: WidgetCustomEnum.blue,
            onTap: () => _goToBluePage(context),
          ),
          MyCustomWidget(
            enumValue: WidgetCustomEnum.yellow,
            onTap: () => _goToYellowPage(context),
          ),
          MyCustomWidget(
            enumValue: WidgetCustomEnum.red,
            onTap: () => _goToRedPage(context),
          ),
          MyCustomWidget(
            enumValue: WidgetCustomEnum.green,
            onTap: () => _goToGreenPage(context),
          ),
        ],
      );

  Widget _contentBodyForMediumScreen(BuildContext context) => Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MyCustomWidget(
                enumValue: WidgetCustomEnum.blue,
                onTap: () => _goToBluePage(context),
              ),
              MyCustomWidget(
                enumValue: WidgetCustomEnum.yellow,
                onTap: () => _goToYellowPage(context),
              ),
            ],
          ),
          Row(
            children: [
              MyCustomWidget(
                enumValue: WidgetCustomEnum.red,
                onTap: () => _goToRedPage(context),
              ),
              MyCustomWidget(
                enumValue: WidgetCustomEnum.green,
                onTap: () => _goToGreenPage(context),
              ),
            ],
          ),
        ],
      );

  Widget _contentBodyForLargeScreen(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyCustomWidget(
            enumValue: WidgetCustomEnum.blue,
            onTap: () => _goToBluePage(context),
          ),
          MyCustomWidget(
            enumValue: WidgetCustomEnum.yellow,
            onTap: () => _goToYellowPage(context),
          ),
          MyCustomWidget(
            enumValue: WidgetCustomEnum.red,
            onTap: () => _goToRedPage(context),
          ),
          MyCustomWidget(
            enumValue: WidgetCustomEnum.green,
            onTap: () => _goToGreenPage(context),
          ),
        ],
      );

  void _goToBluePage(BuildContext context) {
    Navigator.pushNamed(context, BluePage.route);
  }

  void _goToYellowPage(BuildContext context) {
    Navigator.pushNamed(context, YellowPage.route);
  }

  void _goToRedPage(BuildContext context) {
    Navigator.pushNamed(context, RedPage.route);
  }

  void _goToGreenPage(BuildContext context) {
    Navigator.pushNamed(context, GreenPage.route);
  }
}
