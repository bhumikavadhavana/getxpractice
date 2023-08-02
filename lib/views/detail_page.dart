import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/counter_provider.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  CounterController c2 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${c2.countermodel.counter}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
