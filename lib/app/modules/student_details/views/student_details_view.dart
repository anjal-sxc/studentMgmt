import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/student_details_controller.dart';

class StudentDetailsView extends GetView<StudentDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudentDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StudentDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
