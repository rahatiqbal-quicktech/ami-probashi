import 'package:ami_probashi/common/widgets/horizontal_space.dart';
import 'package:ami_probashi/common/widgets/vertical_space.dart';
import 'package:ami_probashi/config/app_color_config.dart';
import 'package:flutter/material.dart';

class PassportOfficeItemWidget extends StatefulWidget {
  const PassportOfficeItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PassportOfficeItemWidget> createState() =>
      _PassportOfficeItemWidgetState();
}

class _PassportOfficeItemWidgetState extends State<PassportOfficeItemWidget> {
  bool showDetails = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(),
              // ListTile(
              //   contentPadding: EdgeInsets.zero,
              //   horizontalTitleGap: 0,
              //   title: const Text(
              //     "Divisional Passport and Visa Office",
              //     maxLines: 2,
              //   ),
              //   trailing: GestureDetector(
              //     onTap: () {},
              //     child: const Icon(
              //       Icons.star,
              //       color: themeColor,
              //     ),
              //   ),
              // ),
              // const VerticalSpace(height: 5),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showDetails = !showDetails;
                      });
                    },
                    child: const Text(
                      "Divisional Passport and Visa Office",
                      maxLines: 2,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.star_border,
                      color: themeColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  showDetails == false
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              showDetails = !showDetails;
                            });
                          },
                          child: const Text(
                            "Regional Passport Office",
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      : Container(),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          showDetails = !showDetails;
                        });
                      },
                      child: showDetails
                          ? Icon(
                              Icons.close,
                              color: themeColor.withOpacity(0.5),
                            )
                          : const Icon(
                              Icons.arrow_drop_down,
                              // color: themeColor.withOpacity(10),
                              color: themeColor,
                            )),
                ],
              ),
              showDetails
                  ? Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.map_outlined,
                              color: themeColor,
                            ),
                            HorizontalSpace(width: 20),
                            Text(
                              "Regional Passport Office London",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        const VerticalSpace(height: 5),
                        Row(
                          children: const [
                            Icon(
                              Icons.wordpress_outlined,
                              color: themeColor,
                            ),
                            HorizontalSpace(width: 20),
                            Text(
                              "www.flutter.com",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        const VerticalSpace(height: 5),
                        Row(
                          children: const [
                            Icon(
                              Icons.phone_iphone_outlined,
                              color: themeColor,
                            ),
                            HorizontalSpace(width: 20),
                            Text(
                              "012748678663",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
        const Divider(
          height: 5,
          color: themeColor,
        ),
      ],
    );
  }
}
