import 'package:get/get.dart';

import '../controllers/teacher_page_controller.dart';

class TeacherPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeacherPageController>(
      () => TeacherPageController(),
    );
  }
}
