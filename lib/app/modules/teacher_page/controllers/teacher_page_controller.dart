import 'package:get/get.dart';

class TeacherPageController extends GetxController {
  List teachers = [
    ["Ram Maharjan", "9878455489", "BIM"],
    ["Shyam Maharjan", "9878455489", "BSW"],
    ["Hari Maharjan", "9878455489", "BBS"],
    ["Ramey Maharjan", "9878455489", "BIT"],
    ["Rajesh Maharjan", "9878455489", "BSCCSIT"],
    ["Hari Lal Maharjan", "9878455489", "BA"]
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
