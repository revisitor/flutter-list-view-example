import 'package:flutter/material.dart';

import 'color_data.dart';
import 'color_widget.dart';

class ColorListView extends StatelessWidget {
  final List<ColorData> _colorData = [
    ColorData('Красный', Colors.red),
    ColorData('Жёлтый', Colors.yellow),
    ColorData('Зелёный', Colors.green),
  ];

  ColorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: _colorData.length,
          itemBuilder: (_, int index) {
            final colorData = _colorData[index];
            return ColorWidget(colorData);
          },
        ),
      ),
    );
  }
}
