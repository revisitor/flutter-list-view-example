import 'package:flutter/material.dart';

import 'colors/color_list_view.dart';

void main() {
  const app = App();
  runApp(app);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorListView(),
    );
  }
}
