import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/counter_provider.dart';
import 'package:getx_practice/model/counter_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  CounterController c1 = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter App"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode == true
                      ? ThemeData.light(useMaterial3: true)
                      : ThemeData.dark(useMaterial3: true),
                );
              },
              icon: Icon(Icons.sunny)),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              c1.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              c1.increment();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<CounterController>(
              builder: (_) =>
                  Text(
                    "${c1.countermodel.counter}",
                    style: TextStyle(fontSize: 45),
                  ),
            ),
            ElevatedButton(onPressed: () {
              Get.toNamed('/detail');
            }, child: Text("Go to Detail page")),
          ],
        ),
      ),
    );
  }
}
