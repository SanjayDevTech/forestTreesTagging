import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  final String text;
  final Widget widget;

  MyFlatButton(this.text, this.widget);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () async {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => widget));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.lightGreen, fontWeight: FontWeight.bold),
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.green, width: 3.0),
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
