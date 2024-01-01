import 'package:flutter/material.dart';
import 'package:real_estate_app_challenge/presentation/common_widgets/top_bar.dart';

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
                child: TopBar(notificationActive: true),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RichText(
                    text: const TextSpan(
                  text: "Looking",
                  children: [
                    TextSpan(text: "for an")
                  ],
                )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
