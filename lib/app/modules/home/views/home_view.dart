import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() {
      return showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              content: new Text('Are you sure you want to exit?'),
              actions: <Widget>[
                new TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text('No'),
                ),
                new TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: new Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

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
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
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
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                MediaQuery.of(context).orientation ==
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
                            return GestureDetector(
                              onTap: index == 0
                                  ? () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          content: Container(
                                            height: 250,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: <Widget>[
                                                  Center(
                                                      child: Text(
                                                    'Sam Shrestha',
                                                    style: GoogleFonts.antic(
                                                      textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                  )),
                                                  Divider(
                                                    thickness: 1.5,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Roll no : 016bscit049",
                                                      style: GoogleFonts.antic(
                                                        textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 1.5,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Faculty: BSCIT",
                                                      style: GoogleFonts.antic(
                                                        textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 1.5,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Address : Bhaktapur",
                                                      style: GoogleFonts.antic(
                                                        textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 1.5,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Email : samshrestha@gmail.com",
                                                      style: GoogleFonts.antic(
                                                        textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      })
                                  : homeController.items[index][2],
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 12, left: 12, right: 12, bottom: 8),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xfff2f2f2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            height: 65,
                                            width: 80,
                                            child: Image(
                                              image: AssetImage(homeController
                                                  .items[index][1]),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          homeController.items[index][0],
                                          style: TextStyle(
                                              fontSize: 14, height: 1.2),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
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
