import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ComplaintsPageController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController typeControl = new TextEditingController();
  TextEditingController nameControl = new TextEditingController();
  TextEditingController numberControl = new TextEditingController();
  TextEditingController titleControl = new TextEditingController();
  TextEditingController feedbackControl = new TextEditingController();
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
