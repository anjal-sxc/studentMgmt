import 'package:get/get.dart';

import '../controllers/activites_page_controller.dart';

class ActivitesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActivitesPageController>(
      () => ActivitesPageController(),
    );
  }
}
