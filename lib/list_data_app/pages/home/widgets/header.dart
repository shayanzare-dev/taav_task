import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ColoredBox(
        color: Colors.green,
        child: Center(child: Text(AppLocalizations.of(context)!.title)),
      ),
    );
  }
}


