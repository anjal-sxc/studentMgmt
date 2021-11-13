import 'package:get/get.dart';

class ActivitesPageController extends GetxController {
  List items = [
    [
      "Basketball",
      "Sunday",
    ],
    [
      "Table Tennis",
      "Monday",
    ],
    [
      "Basketball",
      "Tuesday",
    ],
    [
      "Football",
      "Wednesday",
    ],
    [
      "Cricket",
      "Thursday",
    ],
    [
      "Batminton",
      "Friday",
    ],
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
