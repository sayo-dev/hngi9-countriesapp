import 'dart:async';
import 'package:explore/utils/constants/font.dart';
import 'package:flutter/material.dart';
import '../utils/components/reusable.dart';
import '../utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacementNamed(context, '/home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: kText(
            text: 'Explore',
            size: 24,
            family: FontFamily.kPacifico,
            fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

