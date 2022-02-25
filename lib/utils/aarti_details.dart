import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../models/samples.dart';

class AartiDetails extends StatelessWidget {
  int item_no;
  AartiDetails(this.item_no);
  var style = MarkdownStyleSheet(
    textAlign: WrapAlignment.center,
    h1Align: WrapAlignment.center,
    h1: const TextStyle(color: Colors.orangeAccent, fontSize: 28),
    textScaleFactor: 1.5,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            future: rootBundle.loadString(artis[item_no].textPath),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Markdown(
                  data: snapshot.data!,
                  styleSheet: style,
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}