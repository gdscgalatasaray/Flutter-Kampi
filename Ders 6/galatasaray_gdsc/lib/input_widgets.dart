import 'package:flutter/material.dart';
import 'package:galatasaray_gdsc/widgets_pages/auto_complete_widget.dart';

import 'widgets_pages/dh_form.dart';

class MyText extends StatelessWidget {
  const MyText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

Widget myText2(String text) {
  return Text(text);
}

class InputWidgets extends StatelessWidget {
  const InputWidgets({Key? key}) : super(key: key);
/* 
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const MyText("Flutter Input Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AutoCompleteWidget(),
                    ),
                  );
                },
                title: const Text("Autocomplete Widget"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  //

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DhForm(),
                    ),
                  );
                },
                title: const Text("Form Widget"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
