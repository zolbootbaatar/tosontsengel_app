import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tosontsengel_app/Routes/AppRouter.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [
      HomeGridData(
        title: 'Хөтөлбөр',
        icon: 'calendar',
        path: (() => AutoRouter.of(context).push(const EventRoute())),
      ),
      HomeGridData(
        title: 'Газрын зураг',
        icon: 'map',
        path: (() => AutoRouter.of(context).push(const MapRoute())),
      ),
      HomeGridData(
        title: 'Мэдээ',
        icon: 'news',
        path: (() => AutoRouter.of(context).push(const NewsRoute())),
      ),
      HomeGridData(
        title: 'Уриалга',
        icon: 'check',
        path: (() => AutoRouter.of(context).push(const AppealRoute())),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/home_logo.png'),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 40.0,
                      crossAxisSpacing: 40.0,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: data[index].path,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffd3d3d3),
                                blurRadius: 15,
                              )
                            ],
                          ),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/home/${data[index].icon}.svg',
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                data[index].title,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff10618D),
                                ),
                              ),
                            ],
                          )),
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const DonationRoute());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffd3d3d3),
                          blurRadius: 15,
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/home/donation.svg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Хандивын мэдээлэл',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff10618D),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: const Text(
                                'Тос даасан Тосонцэнгэл нутагтаа сэтгэлийн хандив өргөсөн нийт хүмүүсдээ баярлалаа.',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff10618D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeGridData {
  HomeGridData({this.icon, this.title, this.path});

  String? title;
  String? icon;
  void Function()? path;
}
