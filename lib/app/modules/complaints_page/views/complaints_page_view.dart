import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/complaints_page_controller.dart';

class ComplaintsPageView extends GetView<ComplaintsPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ComplaintsPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ComplaintsPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
