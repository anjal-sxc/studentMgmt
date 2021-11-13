import 'package:get/get.dart';

import 'package:student_mgmt/app/modules/activites_page/bindings/activites_page_binding.dart';
import 'package:student_mgmt/app/modules/activites_page/views/activites_page_view.dart';
import 'package:student_mgmt/app/modules/complaints_page/bindings/complaints_page_binding.dart';
import 'package:student_mgmt/app/modules/complaints_page/views/complaints_page_view.dart';
import 'package:student_mgmt/app/modules/home/bindings/home_binding.dart';
import 'package:student_mgmt/app/modules/home/views/home_view.dart';
import 'package:student_mgmt/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:student_mgmt/app/modules/login_page/views/login_page_view.dart';
import 'package:student_mgmt/app/modules/student_details/bindings/student_details_binding.dart';
import 'package:student_mgmt/app/modules/student_details/views/student_details_view.dart';
import 'package:student_mgmt/app/modules/student_info/bindings/student_info_binding.dart';
import 'package:student_mgmt/app/modules/student_info/views/student_info_view.dart';
import 'package:student_mgmt/app/modules/teacher_page/bindings/teacher_page_binding.dart';
import 'package:student_mgmt/app/modules/teacher_page/views/teacher_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT_INFO,
      page: () => StudentInfoView(),
      binding: StudentInfoBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT_DETAILS,
      page: () => StudentDetailsView(),
      binding: StudentDetailsBinding(),
    ),
    GetPage(
      name: _Paths.COMPLAINTS_PAGE,
      page: () => ComplaintsPageView(),
      binding: ComplaintsPageBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVITES_PAGE,
      page: () => ActivitesPageView(),
      binding: ActivitesPageBinding(),
    ),
    GetPage(
      name: _Paths.TEACHER_PAGE,
      page: () => TeacherPageView(),
      binding: TeacherPageBinding(),
    ),
  ];
}
