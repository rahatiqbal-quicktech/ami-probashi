import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/round_button_widget.dart';
import 'package:ami_probashi/common/widgets/theme_color_textformfield.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

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
          "Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            VerticalSpace(height: getHeight(context) * 5.5),
            const ThemeColorTextFormField(
              icondata: Icons.password,
              hint: "Password",
              hideText: true,
            ),
            VerticalSpace(height: getHeight(context) * 5),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: RoundButtonWidget(
                  labelText: "Continue",
                  backgroundColor: themeColor,
                  function: () {}),
            ),
            VerticalSpace(height: getHeight(context) * 2),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey.shade600),
                ))
          ],
        ),
      ),
    );
  }
}
