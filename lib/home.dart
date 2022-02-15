import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application_1/exam_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Exam> dataList = [];

  @override
  void initState() {
    loadJson();
    super.initState();
  }

  Future<void> loadJson() async {
    String jsonData = await rootBundle.loadString("assets/json/exam.json");
    // print(jsonData);
    var data = json.decode(jsonData);

    (data['result'] as Map).forEach(
      (key, value) {
        for (var element in (value as List)) {
          dataList.add(Exam.from(element));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              dataList.length,
              (index) => Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Real name -> ${dataList[index].home!.name!}',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
