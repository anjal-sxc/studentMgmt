import 'package:get/get.dart';

class FeedbackPageController extends GetxController {
  List items = [
    ["a","b","B","c"],
    ["v","C","S","A"]

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
