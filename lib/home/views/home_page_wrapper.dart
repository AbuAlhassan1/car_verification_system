import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageWrapper extends StatefulWidget {
  const HomePageWrapper({super.key});

  @override
  State<HomePageWrapper> createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if ((constraints.maxWidth + 100.sp) < constraints.maxHeight) {
          return const HomeVertical();
        } else {
          return const HomeHorizontal();
        }
      },
    );
  }
}

class HomeVertical extends StatelessWidget {
  const HomeVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class HomeHorizontal extends StatelessWidget {
  const HomeHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.red);
  }
}
