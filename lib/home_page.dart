import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final primaryColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(50),
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text('اپلیکیشن من'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6.0),
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'آپدیت به ورژن جدید',
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'محصولات جدید',
              textDirection: TextDirection.rtl,
            ),
            Expanded(
              flex: 1,
              child: _myProductListView(),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'افراد منتخب',
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 3,
              child: _myListView(),
            )
          ],
        ),
      ),
    );
  }

  Widget _myProductListView() => ListView(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        children: List.generate(
          20,
          (index) => Container(
            margin: const EdgeInsets.all(8),
            width: 100,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(5)),
          ),
        ),
      );

  Widget _myListView() => ListView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        children: List.generate(
          20,
          (index) => Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(5)),
            height: 100,
          ),
        ),
      );
}
