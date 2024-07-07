import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';

@RoutePage()
class AppealPage extends StatelessWidget {
  const AppealPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<AppealData> appealData = [
      AppealData(icon: 'naadii', color: const Color(0xff128165)),
      AppealData(icon: 'safe', color: const Color(0xffF68F55)),
      AppealData(icon: 'eco', color: const Color(0xff9BCB41)),
      AppealData(icon: 'gentle', color: const Color(0xff0B648D)),
    ];
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Уриалга',
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: appealData.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: appealData[index].color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(
                      'assets/appeal/${appealData[index].icon}.svg'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class AppealData {
  AppealData({required this.icon, required this.color});

  String icon;
  Color color;
}
