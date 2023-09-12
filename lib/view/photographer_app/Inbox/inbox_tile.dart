import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InboxTile extends StatefulWidget {
  const InboxTile({Key? key}) : super(key: key);

  @override
  State<InboxTile> createState() => _InboxTileState();
}

class _InboxTileState extends State<InboxTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
      ),
    );
  }
}
