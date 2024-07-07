import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:widget_zoom/widget_zoom.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';

@RoutePage()
// ignore: must_be_immutable
class AppealDetailPage extends StatelessWidget {
  AppealDetailPage({super.key, this.title, this.icon});

  String? title;
  String? icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
      ),
      body: Center(
        child: WidgetZoom(heroAnimationTag: 'tag', zoomWidget:  Image.asset(
          'assets/appeal/${icon}page.png',
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
      ),
    );
  }
}
