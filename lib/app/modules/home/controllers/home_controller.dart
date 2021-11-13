import 'package:get/get.dart';

class HomeController extends GetxController {
  List items = [
    ['Student Info', "assets/images/student-icon.png"],
    ['Feedback', "assets/images/child-feedback-icon.png"],
    ['Classes', "assets/images/class-icon.png"],
    ['Activities', "assets/images/activites-icon.png"],
    ['Complaint', "assets/images/complaint-icon.png"],
    ['Teacher', "assets/images/teacher-icon.png"],
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
