import 'package:flutter/material.dart';
import 'package:real_estate_app_challenge/presentation/common_widgets/top_bar.dart';
import 'package:real_estate_app_challenge/presentation/theme/app_theme.dart';

import '../common_widgets/forward_button.dart';
import '../home/home_screen.dart';

class OnboardScreenOne extends StatelessWidget {
  const OnboardScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TopBar(notificationActive: false),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, top: 64.0),
                child: RichText(
                  text: TextSpan(
                    text: "",
                    children: [
                      const TextSpan(
                          text: "Looking ", style: AppTheme.heading1Style),
                      TextSpan(
                          text: "for an",
                          style: AppTheme.heading1Style
                              .copyWith(color: AppTheme.tertiaryColor)),
                      TextSpan(
                          text: "\nelegant house this",
                          style: AppTheme.heading1Style
                              .copyWith(color: AppTheme.secondaryColor)),
                      TextSpan(
                          text: "\nis the place",
                          style: AppTheme.heading1Style
                              .copyWith(color: AppTheme.secondaryColor)),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 96.0, top: 16.0),
                child: Text(
                  "Welcome friends, are you looking for us?",
                  style: AppTheme.bodyStyle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Text(
                  "Congratulations, you have found us!",
                  style: AppTheme.bodyStyle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: ForwardButton(
                  borderRadius: 10.0,
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  text: "Next",
                  icon: Icons.arrow_right_alt_sharp,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
