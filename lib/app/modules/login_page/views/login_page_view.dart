import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_mgmt/app/modules/home/bindings/home_binding.dart';
import 'package:student_mgmt/app/modules/home/views/home_view.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginPageController loginPageController =
      Get.put(LoginPageController());

  int selectedRadio = 1;

  setSelectedRadio(int val) {
    selectedRadio = val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color.fromRGBO(156, 233, 178, 1),
                Color.fromRGBO(173, 187, 238, 1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.antic(
                          textStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          fontSize: 70,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "Welcome",
                      style: GoogleFonts.asar(
                        textStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        fontSize: 20,
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Form(
                            key: _formKey,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Color(0xfff2f2f2),
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: loginPageController
                                          .usernameController,
                                      decoration: InputDecoration(
                                          hintText: "Username",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Field cannot be empty";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                      color: Color(0xfff2f2f2),
                                    ))),
                                    child: TextFormField(
                                      controller: loginPageController
                                          .passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Field cannot be empty";
                                        } else
                                          return null;
                                      },
                                    ),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: <Widget>[
                                  //     // Radio(
                                  //     //   activeColor: Colors.green,
                                  //     //   groupValue: selectedRadio,
                                  //     //   value: 1,
                                  //     //   onChanged: (val) {
                                  //     //     print(val);
                                  //     //     setSelectedRadio(val);
                                  //     //   },
                                  //     // ),
                                  //     // Text('parent',
                                  //     //     style: GoogleFonts.asar(
                                  //     //       textStyle: TextStyle(
                                  //     //           color: Colors.green[300],
                                  //     //           fontWeight: FontWeight.bold),
                                  //     //       fontSize: 20,
                                  //     //     )),
                                  //     // Radio(
                                  //     //   activeColor: Colors.green,
                                  //     //   groupValue: selectedRadio,
                                  //     //   value: 2,
                                  //     //   onChanged: (val) {
                                  //     //     print(val);
                                  //     //     // setSelectedRadio(val);
                                  //     //   },
                                  //     // ),
                                  //     // Text(
                                  //     //   'teacher',
                                  //     //   style: TextStyle(
                                  //     //       color: Colors.green[300],
                                  //     //       fontWeight: FontWeight.bold),
                                  //     // ),
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(154, 233, 178, 1)),
                            child: Center(
                              child: MaterialButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    if (loginPageController
                                                .usernameController.text ==
                                            "016bscit049" &&
                                        loginPageController
                                                .passwordController.text ==
                                            "password") {
                                      Get.off(
                                        () => HomeView(),
                                        binding: HomeBinding(),
                                      );
                                      loginPageController.passwordController
                                          .clear();
                                      loginPageController.usernameController
                                          .clear();
                                    } else
                                      Get.snackbar("Invalid authentication",
                                          "Username or password maybe incorrect.",
                                          snackPosition: SnackPosition.TOP);
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
