import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const VerticalSpace(height: 30),
                Container(
                  height: getHeight(context) * 15,
                  color: themeColor,
                  child: const Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://www.defineinternational.com/wp-content/uploads/2014/06/dummy-profile.png"),
                        radius: 30,
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.newspaper,
                    color: buttonColor,
                  ),
                  title: const Text("Option"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
