import 'package:ami_probashi/common/functions/get_screen_height_width.dart';
import 'package:ami_probashi/common/widgets/horizontal_space.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class JobsItemWidget extends StatelessWidget {
  const JobsItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                  width: getWidth(context) * 50,
                  child: const Text(
                    "Cleaner",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              const Spacer(),
              Text(
                "Posted 1 week ago",
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
          const VerticalSpace(height: 10),
          Text(
            "ABD Air International Limited",
            style: TextStyle(
              color: Colors.grey.shade500,
            ),
          ),
          const VerticalSpace(height: 20),
          Row(
            children: [
              Icon(
                Icons.flag,
                color: themeColor.withOpacity(0.5),
              ),
              const HorizontalSpace(width: 10),
              const Text("United Arab Emirates"),
            ],
          ),
          const VerticalSpace(height: 10),
          Row(
            children: [
              Icon(
                Icons.newspaper,
                color: themeColor.withOpacity(0.5),
              ),
              const HorizontalSpace(width: 10),
              const Text("1000.0 AED / month"),
            ],
          ),
          const VerticalSpace(height: 10),
          Row(
            children: [
              Icon(
                Icons.newspaper,
                color: themeColor.withOpacity(0.5),
              ),
              const HorizontalSpace(width: 10),
              const Text("Application Deadline : January 1, 2022"),
            ],
          ),
          const VerticalSpace(height: 10),
          const Divider(),
          const VerticalSpace(height: 5),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                "Details",
                style: TextStyle(
                  color: themeColor,
                ),
              ),
            ),
          ),
          const VerticalSpace(height: 5),
        ],
      ),
    );
  }
}
