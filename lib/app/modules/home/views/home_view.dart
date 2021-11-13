import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_mgmt/app/modules/activites_page/bindings/activites_page_binding.dart';
import 'package:student_mgmt/app/modules/activites_page/views/activites_page_view.dart';
import 'package:student_mgmt/app/modules/complaints_page/bindings/complaints_page_binding.dart';
import 'package:student_mgmt/app/modules/complaints_page/views/complaints_page_view.dart';
import 'package:student_mgmt/app/modules/teacher_page/bindings/teacher_page_binding.dart';
import 'package:student_mgmt/app/modules/teacher_page/views/teacher_page_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double itemHeight;
    var size = MediaQuery.of(context).size;
    print("height: " + size.height.toString());
    print("width: " + size.width.toString());

    if (size.height > 684 && size.height < 896) {
      itemHeight = (size.height - kToolbarHeight - 24) / 3.5 + 18;
    } else if (size.height < 684) {
      itemHeight = (size.height - kToolbarHeight - 24) / 2.8 - 3;
    } else if (size.height >= 896 && size.height < 926) {
      itemHeight = (size.height - kToolbarHeight - 24) / 4;
    } else {
      itemHeight = (size.height - kToolbarHeight - 24) / 4.2;
    }

    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.35,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Color.fromRGBO(156, 233, 178, 1),
                      Color.fromRGBO(173, 187, 238, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.075),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      text('Mr. parent49'),
                      SizedBox(
                        height: 8,
                      ),
                      text("Address: test"),
                      SizedBox(
                        height: 8,
                      ),
                      text('Phone Number: 9898989898')
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                padding: EdgeInsets.only(top: 12, left: 24, right: 24),
                decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 3
                            : 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: (itemWidth / itemHeight),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: homeController.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(
                              top: 12, left: 12, right: 12, bottom: 8),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xfff2f2f2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 8,
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                offset: Offset(1, 4),
                              )
                            ],
                          ),
                          width: 140,
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      height: 65,
                                      width: 80,
                                      child: Image(
                                        image: AssetImage(
                                            homeController.items[index][1]),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    homeController.items[index][0],
                                    style: TextStyle(fontSize: 14, height: 1.2),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.05,
                        right: Get.width * 0.05,
                        top: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(
                          () => ComplaintsPageView(),
                          binding: ComplaintsPageBinding(),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(22)),
                      color: Colors.red,
                      child: Text(
                        "Complaint Page",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(
                          () => ActivitesPageView(),
                          binding: ActivitesPageBinding(),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(22)),
                      color: Colors.red,
                      child: Text(
                        "Activity Page",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        Get.to(
                          () => TeacherPageView(),
                          binding: TeacherPageBinding(),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(22)),
                      color: Colors.red,
                      child: Text(
                        "Teacher Page",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget text(String text) {
  return Text(
    text,
    style: TextStyle(color: Colors.white, fontSize: 22),
  );
}
