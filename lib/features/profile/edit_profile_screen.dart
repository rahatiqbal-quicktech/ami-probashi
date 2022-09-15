import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/round_button_widget.dart';
import 'package:ami_probashi/common/widgets/theme_color_textformfield.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.1,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Edit Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ListView(
            children: [
              VerticalSpace(height: getHeight(context) * 2),
              Column(
                children: [
                  Container(
                      height: 100,
                      width: getWidth(context) * 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: scaffoldBackground,
                      ),
                      child: const Icon(Icons.account_box)),
                ],
              ),
              const VerticalSpace(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Change picture",
                  style: TextStyle(
                    color: themeColor,
                  ),
                ),
              ),
              const VerticalSpace(height: 20),
              const Text("Name"),
              const VerticalSpace(height: 10),
              const ThemeColorTextFormField(
                  icondata: Icons.account_box, hint: "Your name"),
              const VerticalSpace(height: 20),
              const Text("Email Address"),
              const VerticalSpace(height: 10),
              const ThemeColorTextFormField(
                  icondata: Icons.email, hint: "Email address"),
              const VerticalSpace(height: 20),
              const Text("Mobile"),
              const VerticalSpace(height: 10),
              const ThemeColorTextFormField(
                icondata: Icons.phone_iphone,
                hint: "Mobile",
              ),
              const VerticalSpace(height: 20),
              const Text("Selected countries"),
              const VerticalSpace(height: 10),
              RoundButtonWidget(
                icon: Icons.edit,
                labelText: "Edit Countries",
                backgroundColor: Colors.grey,
                function: () {},
              ),
              const VerticalSpace(height: 20),
              const Text("Selected skills"),
              const VerticalSpace(height: 10),
              RoundButtonWidget(
                icon: Icons.edit,
                labelText: "Edit skills",
                backgroundColor: Colors.grey,
                function: () {},
              ),
              const VerticalSpace(height: 20),
              SizedBox(
                height: 50,
                child: RoundButtonWidget(
                  labelText: "Save",
                  backgroundColor: themeColor,
                  function: () {},
                ),
              ),
              const VerticalSpace(height: 20),
            ],
          ),
        )));
  }
}
