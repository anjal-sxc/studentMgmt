import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feedback_page_controller.dart';

class FeedbackPageView extends GetView<FeedbackPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FeedbackPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FeedbackPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
