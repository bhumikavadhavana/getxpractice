import 'package:get/get.dart';
import 'package:getx_practice/model/counter_model.dart';

class CounterController extends GetxController {
  counterModel countermodel = counterModel(counter: 0.obs);

  void increment() {
    countermodel.counter++;
  }

  void decrement() {
    countermodel.counter--;
  }
}
