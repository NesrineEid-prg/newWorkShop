import 'package:flutter/material.dart';
import 'package:workshop/core/constants/app_color.dart';
import 'package:workshop/core/widgets/custum_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustumButton(
            onPressed: () {},
            text: 'Gold',
            color: AppColors.goldColor,
          ),
          SizedBox(height: 15),
          CustumButton(
            onPressed: () {},
            text: 'Silver',
            color: AppColors.silverColor,
          ),
        ],
      ),
    );
  }
}
