import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: [
            Container(),
            VerticalSpace(height: getHeight(context) * 5),
            const CircleAvatar(
              // backgroundImage: NetworkImage(
              //     "https://www.nicepng.com/png/detail/202-2024580_png-file-profile-icon-vector-png.png"),
              radius: 40,
            ),
            const VerticalSpace(height: 20),
            Container(
              decoration: BoxDecoration(
                color: scaffoldBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("My Documents"),
                subtitle: Text("Scan and store your documents"),
              ),
            ),
            const VerticalSpace(height: 10),
            Container(
              decoration: BoxDecoration(
                color: scaffoldBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("My Documents"),
                subtitle: Text("Scan and store your documents"),
              ),
            ),
            const VerticalSpace(height: 10),
            Container(
              decoration: BoxDecoration(
                color: scaffoldBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("My Documents"),
                subtitle: Text("Scan and store your documents"),
              ),
            ),
            const VerticalSpace(height: 10),
            Container(
              decoration: BoxDecoration(
                color: scaffoldBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("My Documents"),
                subtitle: Text("Scan and store your documents"),
              ),
            ),
            const VerticalSpace(height: 10),
            Container(
              decoration: BoxDecoration(
                color: scaffoldBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                leading: Icon(Icons.newspaper),
                title: Text("My Documents"),
                subtitle: Text("Scan and store your documents"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
