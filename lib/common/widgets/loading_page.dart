import 'package:flutter/material.dart';
import 'package:ngajiyuk/common/widgets/loading_widget.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LoadingWidget(),
    );
  }
}
