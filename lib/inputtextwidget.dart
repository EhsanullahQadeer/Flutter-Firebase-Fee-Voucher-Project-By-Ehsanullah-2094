import 'package:flutter/material.dart';
class inputtext extends StatelessWidget {
  final TextEditingController Controller;
  String? labeltext;
   inputtext({required this.labeltext,required this.Controller});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300.0, // Maximum width
            ),
            child: TextField(
                controller: Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: labeltext,
                )
            )
        )
    );
  }
}

