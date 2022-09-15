import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class HomeScreenContainer extends StatelessWidget {
  const HomeScreenContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context) * 70,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            themeColor.withOpacity(0.8),
            themeColor,
          ]),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.newspaper,
            color: Colors.white,
          ),
          VerticalSpace(height: 5),
          Text(
            "BMET Registartion",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          VerticalSpace(height: 5),
          Text(
            "Register into the database to search and apply fot jobs",
            style: TextStyle(
              color: Colors.white,
            ),
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
