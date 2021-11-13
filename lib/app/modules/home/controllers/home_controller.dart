import 'package:get/get.dart';
import 'package:student_mgmt/app/modules/activites_page/bindings/activites_page_binding.dart';
import 'package:student_mgmt/app/modules/activites_page/views/activites_page_view.dart';
import 'package:student_mgmt/app/modules/complaints_page/bindings/complaints_page_binding.dart';
import 'package:student_mgmt/app/modules/complaints_page/views/complaints_page_view.dart';
import 'package:student_mgmt/app/modules/feedback_page/bindings/feedback_page_binding.dart';
import 'package:student_mgmt/app/modules/feedback_page/views/feedback_page_view.dart';
import 'package:student_mgmt/app/modules/teacher_page/bindings/teacher_page_binding.dart';
import 'package:student_mgmt/app/modules/teacher_page/views/teacher_page_view.dart';

class HomeController extends GetxController {
  List items = [
    ['Student Info', "assets/images/student-icon.png", null],
    [
      'Feedback',
      "assets/images/child-feedback-icon.png",
      () => Get.to(() => FeedbackPageView(), binding: FeedbackPageBinding())
    ],
    ['Classes', "assets/images/class-icon.png", null],
    [
      'Activities',
      "assets/images/activites-icon.png",
      () => Get.to(() => ActivitesPageView(), binding: ActivitesPageBinding())
    ],
    [
      'Complaint',
      "assets/images/complaint-icon.png",
      () => Get.to(() => ComplaintsPageView(), binding: ComplaintsPageBinding())
    ],
    [
      'Teacher',
      "assets/images/teacher-icon.png",
      () => Get.to(() => TeacherPageView(), binding: TeacherPageBinding())
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
