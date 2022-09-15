import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/horizontal_space.dart';
import 'package:ami_probashi/common/widgets/round_button_widget.dart';
import 'package:ami_probashi/common/widgets/theme_color_textformfield.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              Container(),
              const VerticalSpace(height: 20),
              Row(
                children: [
                  const Text(
                    "Ami Probashi",
                    style: TextStyle(
                      color: themeColor,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: themeColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: themeColor,
                            ),
                            child: const Text(
                              "EN",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                        Container(
                            alignment: Alignment.center,
                            width: 50,
                            padding: const EdgeInsets.all(5),
                            child: const Text(
                              "BN",
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              VerticalSpace(height: getHeight(context) * 10),
              const Center(
                  child: Text(
                "Mobile Number",
                style: TextStyle(fontSize: 15.5),
              )),
              VerticalSpace(height: getHeight(context) * 2),
              SizedBox(
                // width: getWidth(context) * 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: const Text(
                          "+880",
                          style: TextStyle(
                            fontSize: 15.5,
                          ),
                        )),
                    const HorizontalSpace(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: getWidth(context) * 60,
                      child: const ThemeColorTextFormField(
                          icondata: Icons.phone_iphone,
                          hint: "Your mobile number"),
                    )
                  ],
                ),
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
              VerticalSpace(height: getHeight(context) * 10),
              const Divider(
                color: themeColor,
              ),
              VerticalSpace(height: getHeight(context) * 5),
              SizedBox(
                width: getWidth(context) * 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 50,
                      color: themeColor.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.email,
                      size: 50,
                      color: themeColor.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.apple,
                      size: 50,
                      color: themeColor.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              VerticalSpace(height: getHeight(context) * 5),
              Text(
                "By signing up, you agree to the Privacy Policy",
                style: TextStyle(color: Colors.grey.shade400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
