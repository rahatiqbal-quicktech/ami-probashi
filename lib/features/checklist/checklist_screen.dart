import 'package:ami_probashi/common/all_controllers.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckListScreen extends StatelessWidget with AllControllers {
  CheckListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text(
            "Passport Offices",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          return ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                onTap: () {
                  checkListController.showCompleteList.toggle();
                },
                title: const Text("Complete"),
                trailing: IconButton(
                  onPressed: () {
                    checkListController.showCompleteList.toggle();
                  },
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ),
              checkListController.showCompleteList.value
                  ? ListView.builder(
                      itemCount: checkListController.completeList.length,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: IconButton(
                            onPressed: () {
                              checkListController.addToAllList(index: index);
                            },
                            icon: const Icon(
                              Icons.verified,
                              color: themeColor,
                            ),
                          ),
                          title: const Text("List title"),
                          subtitle: const Text("List subtitle"),
                        );
                      },
                    )
                  : Container(),
              const VerticalSpace(height: 10),
              ListTile(
                onTap: () {
                  checkListController.showAllList.toggle();
                },
                title: const Text("Upcoming"),
                trailing: IconButton(
                  onPressed: () {
                    checkListController.showAllList.toggle();
                  },
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ),
              checkListController.showAllList.value
                  ? ListView.builder(
                      itemCount: checkListController.allList.length,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: IconButton(
                            onPressed: () {
                              checkListController.addToComplete(index: index);
                            },
                            icon: const Icon(
                              Icons.circle_outlined,
                              color: themeColor,
                            ),
                          ),
                          title: const Text("List title"),
                          subtitle: const Text("List subtitle"),
                        );
                      },
                    )
                  : Container()
            ],
          );
        }));
  }
}
