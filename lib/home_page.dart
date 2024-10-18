import 'package:flutter/material.dart';
import 'package:responsive_design_layout_like_youtube_app/responsive/desktop_body.dart';
import 'package:responsive_design_layout_like_youtube_app/responsive/mobile_body.dart';
import 'package:responsive_design_layout_like_youtube_app/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
