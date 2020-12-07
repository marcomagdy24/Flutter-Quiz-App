import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String buttonName;
  Answer({this.selectHandler, this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(buttonName),
      ),
    );
  }
}
