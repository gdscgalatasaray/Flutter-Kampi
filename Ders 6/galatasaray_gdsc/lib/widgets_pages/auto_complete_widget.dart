import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatelessWidget {
  AutoCompleteWidget({Key? key}) : super(key: key);

  final _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
    'ahmet',
    'mehmet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AutoComplete Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Autocomplete<String>(
            fieldViewBuilder: (context, controller, focusNode, voidCallBack) {
              return TextFormField(
                controller: controller,
                focusNode: focusNode,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              );
            },
            optionsBuilder: (TextEditingValue textEditingValue) {
              final gelenText = textEditingValue.text;
              if (gelenText == '') {
                return [];
              }
              return _kOptions.where(
                  (e) => e.toLowerCase().contains(gelenText.toLowerCase()));
            },
            onSelected: (String selection) {
              debugPrint('You just selected $selection');
            },
          ),
        ),
      ),
    );
  }
}
