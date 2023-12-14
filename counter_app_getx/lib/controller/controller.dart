import 'package:get/get.dart';

class CounterClass extends GetxController {
  var counter = 0.obs;

  void addNumb() {
    counter++;
  }

  void minusNumb() {
    counter--;
  }
}
