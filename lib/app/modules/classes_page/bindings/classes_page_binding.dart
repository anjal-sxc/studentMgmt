import 'package:get/get.dart';

import '../controllers/classes_page_controller.dart';

class ClassesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassesPageController>(
      () => ClassesPageController(),
    );
  }
}
