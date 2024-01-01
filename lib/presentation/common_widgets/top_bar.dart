import 'package:flutter/material.dart';
import 'package:real_estate_app_challenge/presentation/theme/app_theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.notificationActive}) : super(key: key);

  final bool notificationActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Logo
          RichText(
              text: TextSpan(
            text: "Home",
            style:
                AppTheme.heading2Style.copyWith(color: AppTheme.primaryColor),
            children: [
              TextSpan(
                text: "base",
                style: AppTheme.heading2Style
                    .copyWith(color: AppTheme.tertiaryColor),
              )
            ],
          )),
          // notification
          if (notificationActive)
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      //TODO: onpress notification
                    },
                    icon: const Icon(
                      Icons.notifications_none_sharp,
                      size: 30.0,
                      color: Color(0xff6E6F70),
                    )),
                Positioned(
                  left: 8.0,
                  top: 4.0,
                  child: Container(
                    height: 18.0,
                    width: 18.0,
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.circular(100.0),
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    //TODO: Notification count
                    child: const Center(
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
