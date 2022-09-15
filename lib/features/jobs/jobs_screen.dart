import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/jobs_item_widget.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          "Jobs",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: [
            // const VerticalSpace(height: 20),
            Container(
              // height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: themeColor.withOpacity(0.2),
              ),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.search),
                title: const Text("Search"),
              ),
            ),
            const Divider(),
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const JobsItemWidget();
                })
          ],
        ),
      ),
    );
  }
}
