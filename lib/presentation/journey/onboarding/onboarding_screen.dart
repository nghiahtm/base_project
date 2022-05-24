import 'package:base_project/common/constant/images_constant.dart';
import 'package:base_project/presentation/widgets/scaffold_widget/scaffold_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: Image.asset(ImagesConstant.logo),
    );
  }
}
