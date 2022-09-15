import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:ami_probashi/features/home/services_screen.dart';
import 'package:ami_probashi/features/side_bar/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/home_screen_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: scaffoldBackground,
      drawer: const SideBar(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _drawerKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Ami Probashi",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Column(
          // shrinkWrap: true,
          // physics: const BouncingScrollPhysics(),
          children: [
            // const HomeScreenContainer(),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                // shrinkWrap: true,
                children: [
                  const ListTile(
                    title: Text("Your journey abroad"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(
                    height: getHeight(context) * 26,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const HomeScreenContainer();
                        }),
                  )
                ],
              ),
            ),
            const VerticalSpace(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                // shrinkWrap: true,
                children: [
                  ListTile(
                      title: const Text("Services near me >"),
                      trailing: GestureDetector(
                          onTap: () {
                            Get.to(() => const ServicesScreen());
                          },
                          child: const Text("View all (10)"))),
                  SizedBox(
                    height: getHeight(context) * 20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: getWidth(context) * 30,
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: scaffoldBackground,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.newspaper),
                                VerticalSpace(height: 5),
                                Text(
                                  "Option",
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            const VerticalSpace(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                // shrinkWrap: true,
                children: [
                  ListTile(
                      title: const Text("Help Center >"),
                      trailing: GestureDetector(
                          onTap: () {}, child: const Text("View all (20)"))),
                  SizedBox(
                    height: getHeight(context) * 20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: getWidth(context) * 30,
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: scaffoldBackground,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.newspaper),
                                VerticalSpace(height: 5),
                                Text(
                                  "Option",
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            const VerticalSpace(height: 10),
          ],
        ),
      ),
    );
  }
}
