import 'package:flutter/material.dart';
import 'package:miscelania/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.of(context).pushNamed(AppRoutes.homePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    final logoSize = screenWidth * 1.0;

    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
          height: logoSize,
          width: logoSize,
        ),
      ),
    );
  }
}
