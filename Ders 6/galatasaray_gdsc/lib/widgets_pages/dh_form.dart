import 'package:flutter/material.dart';

class DhForm extends StatelessWidget {
  DhForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _isChecked = ValueNotifier<bool>(true);

  final String baslik = "sayfa başlığı";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Sayfası"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: FutureBuilder<dynamic>(
            future: Future.microtask(() {
              return Future.value(1);
            }),
            builder: (context, snapshot) {
              return ListView(
                children: [
                  const SizedBox(height: 64),
                  // for (int i = 0; i < 15; i++)
                  ValueListenableBuilder<bool>(
                    valueListenable: _isChecked,
                    builder: (context, gelenValue, widget) {
                      return Switch(
                        value: gelenValue,
                        onChanged: (bool? degisenValue) {
                          debugPrint(degisenValue.toString());
                          _isChecked.value = degisenValue!;
                        },
                      );
                    },
                  ),
                  // for (int i = 0; i < 15; i++)
                  ValueListenableBuilder<bool>(
                    valueListenable: _isChecked,
                    builder: (context, gelenValue, widget) {
                      return Checkbox(
                        value: gelenValue,
                        onChanged: (bool? degisenValue) {
                          debugPrint(degisenValue.toString());
                          _isChecked.value = degisenValue!;
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (v) {
                        debugPrint(v);
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen email adresini gir';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Şifre",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (v) {
                        debugPrint(v);
                        /*
                        senin v => girilen değerin stringi
                        bunu istediğin veritabanına kaydedilir
                        */
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen Şifreni gir';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.validate();
                    },
                    child: const Text("Onayla"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
