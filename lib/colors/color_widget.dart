import 'package:flutter/material.dart';

import 'color_data.dart';

class ColorWidget extends StatelessWidget {
  static const _colorBoxSize = 50.0;
  static const _separatorWidget = SizedBox(width: 20.0);

  final ColorData _colorData;

  const ColorWidget(this._colorData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _onTapElement(_colorData.colorName, context),
        child: Row(
          children: [
            Container(
              color: _colorData.color,
              width: _colorBoxSize,
              height: _colorBoxSize,
            ),
            _separatorWidget,
            Text(_colorData.colorName),
          ],
        ),
      ),
    );
  }

  void _onTapElement(String text, BuildContext context) {
    final snackbar = _createSnackbar(text);
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  SnackBar _createSnackbar(String text) {
    return SnackBar(
      content: Text('It\'s $text'),
      duration: const Duration(seconds: 1),
    );
  }
}