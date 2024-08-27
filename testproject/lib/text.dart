import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget{
  const TextWidget(this.txt, {super.key });
  final String txt;
  @override
  Widget build(context) {
    return Text(
      txt,
    );
  }
}