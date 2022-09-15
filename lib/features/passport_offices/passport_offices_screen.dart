import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/passport_office_item_widget.dart';

class PassporOfficesScreen extends StatelessWidget {
  const PassporOfficesScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          shrinkWrap: true,
          children: [
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
            const VerticalSpace(height: 10),
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const PassportOfficeItemWidget();
                }),
          ],
        ),
      ),
    );
  }
}
