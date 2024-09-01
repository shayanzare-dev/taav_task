import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    const Color color = Colors.yellowAccent;
    final dynamic test = AppLocalizations.of(context) ?? 'error';
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(test),
      ),
      const SizedBox(height: 8),
      Expanded(child: _listViewSeparated(color)),
    ]);
  }

  Widget _listViewSeparated(Color primaryColor) {
    double containerRightMargin = 0;
    double containerLeftMargin = 0;

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        if (index == 0) {
          containerRightMargin = 16;
        }
        if (index == 19) {
          containerLeftMargin = 16;
        }
        return _listViewItem(
            containerLeftMargin: containerLeftMargin,
            containerRightMargin: containerRightMargin,
            primaryColor: primaryColor);
      },
      separatorBuilder: (_, __) => const SizedBox(
        width: 10,
      ),
    );
  }

  Widget _listViewItem({
    required double containerRightMargin,
    required double containerLeftMargin,
    required Color primaryColor,
  }) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      margin: EdgeInsets.only(
          right: containerRightMargin, left: containerLeftMargin),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: const Text('سلامممم'),
    );
  }
}
