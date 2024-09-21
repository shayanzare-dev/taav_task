import 'package:flutter/material.dart';

class SlidingFloatingActionButton extends StatefulWidget {
  const SlidingFloatingActionButton({super.key});

  @override
  State<SlidingFloatingActionButton> createState() =>
      _SlidingFloatingActionButtonState();
}

class _SlidingFloatingActionButtonState
    extends State<SlidingFloatingActionButton> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _animatedOpacity(Icons.edit),
        _animatedOpacity(Icons.remove),
        _animatedOpacity(Icons.add_call),
        FloatingActionButton(
          onPressed: () => setState(() => _isExpanded = !_isExpanded),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _animatedOpacity(IconData icon) {
    return AnimatedOpacity(
      opacity: _isExpanded ? 1 : 0.0,
      duration: const Duration(milliseconds: 300),
      child: FloatingActionButton(
        onPressed: _isExpanded ? () {} : null,
        child: Icon(icon),
      ),
    );
  }
}
