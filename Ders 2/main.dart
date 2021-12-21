import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.supervised_user_circle_outlined),
            )
          ],
          //centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 4,
          title: const Text('Uber'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                //padding: EdgeInsets.symmetric(vertical :8.0),
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Hoşgeldiniz.',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    //flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        color: Colors.blueGrey.withOpacity(0.5),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text('Ara'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Icon(Icons.search)
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Geçmiş Yolculuklarınız',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: const [
                      Icon(Icons.local_taxi_rounded, color: Colors.white),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Text(
                          'Kadıköy - Ataşehir',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        '56,90₺',
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: const [
                      Icon(Icons.local_taxi_rounded, color: Colors.white),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Text(
                          'Bostancı - Ataşehir',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        '85,90₺',
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
