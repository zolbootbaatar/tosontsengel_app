import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tosontsengel_app/Routes/AppRouter.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';

@RoutePage()
class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateClass> data = [
      DateClass(date: '2024.07.14', day: 'Ням гараг'),
      DateClass(date: '2024.07.15', day: 'Даваа гараг'),
      DateClass(date: '2024.07.16', day: 'Мягмар гараг'),
      DateClass(date: '2024.07.17', day: 'Лхагва гараг'),
      DateClass(date: '2024.07.18', day: 'Пүрэв гараг'),
    ];

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Хөтөлбөр',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    AutoRouter.of(context)
                        .push(EventDetialRoute(date: data[index].date));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffd3d3d3),
                          offset: Offset(0, 0),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          data[index].date,
                          style: const TextStyle(
                            color: Color(0xff10618D),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          data[index].day,
                          style: const TextStyle(
                            color: Color(0xff10618D),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DateClass {
  DateClass({required this.date, required this.day});

  String date;
  String day;
}
