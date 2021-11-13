import 'package:get/get.dart';

class FeedbackPageController extends GetxController {
  List items = [
    ["BIM", "Good Student", "Ram Maharjan", "13th march"],
    ["BSW", "Good Student", "Ram Maharjan", "23rd april"],
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
