import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tosontsengel_app/Service/Program.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';
// ignore_for_file: must_be_immutable

@RoutePage()
class EventDetialPage extends HookConsumerWidget {
  EventDetialPage({super.key, required this.date});

  String date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = useState(false);

    final programmFuture = useMemoized(
      () => ProgramService().getPrograms(),
      [notifier.value],
    );

    final programmSnapShot = useFuture(programmFuture);

    return Scaffold(
      backgroundColor: const Color(0xffF2F2F7),
      appBar: CustomAppBar(
        title: date,
      ),
      body: programmSnapShot.connectionState == ConnectionState.done
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: programmSnapShot.data!.where((e) {
                          String eventDate =
                              e.date!.replaceAll('-', '.').split(' ')[0];
                          print(eventDate);
                          return eventDate == date;
                        }).length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          List filteredPrograms =
                              programmSnapShot.data!.where((e) {
                            String eventDate =
                                e.date!.replaceAll('-', '.').split(' ')[0];
                            return eventDate == date;
                          }).toList();
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    filteredPrograms[index].time,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff10618D),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 8,
                                  child: Text(
                                    filteredPrograms[index].subject,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class DateData {
  DateData({required this.date, required this.event, required this.hour});

  String event;
  String date;
  String hour;
}
