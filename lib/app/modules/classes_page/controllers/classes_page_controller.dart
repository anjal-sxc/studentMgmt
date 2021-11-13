import 'package:get/get.dart';

class ClassesPageController extends GetxController {
  List items = [
    ["Accounting", "8:00 AM", "Ram Maharjan"],
    ["Finance", "9:00 AM", "Ram Maharjan"],
    ["Computer", "10:00 AM", "Ram Maharjan"],
    ["Economics", "11:00 AM", "Ram Maharjan"],
    ["Business", "12:00 AM", "Ram Maharjan"],
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
