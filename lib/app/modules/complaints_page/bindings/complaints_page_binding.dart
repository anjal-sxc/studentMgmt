import 'package:get/get.dart';

import '../controllers/complaints_page_controller.dart';

class ComplaintsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ComplaintsPageController>(
      () => ComplaintsPageController(),
    );
  }
}
