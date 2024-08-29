import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    const Color color = Colors.yellowAccent;
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'محصولات جدید',
        ),
      ),
      const SizedBox(height: 8),
      Expanded(child: _listViewBuilder(color)),
    ]);
  }

  Widget _listViewBuilder(Color primaryColor) {
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
