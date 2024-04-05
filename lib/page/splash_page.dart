import 'package:flutter/material.dart';
import 'package:flutter_news/canvas/right_side_canvas.dart';
import 'package:flutter_news/common/styles.dart';
import 'package:flutter_news/common/styles/color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        children: [
          Positioned.fill(
            child: RightSideCanvas(
              color: AppColor.primaryDark,
            ),
          ),
          const Center(child: FlutterLogo(size: 128)),
        ],
      ),
    );
  }
}
