import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:widget_zoom/widget_zoom.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';

@RoutePage()
class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Газрын зураг',
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: WidgetZoom(
            heroAnimationTag: 'tag',
            zoomWidget: Image.asset(
              'assets/map/map.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
