import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';
// ignore_for_file: must_be_immutable

@RoutePage()
class EventDetialPage extends StatelessWidget {
  EventDetialPage({super.key, required this.date});

  String date;

  @override
  Widget build(BuildContext context) {
    List<DateData> programs = [
      DateData(
        date: '2024.07.14',
        event: ' Зочдыг угтаж, байрлуулах',
        hour: '08:30',
      ),
      DateData(
        date: '2024.07.14',
        event: ' Хурдан морьд бүртгэх',
        hour: '09:00',
      ),
      DateData(
        date: '2024.07.14',
        event:
            ' Тосонцэнгэл сумын түүхт 100 жилийн ойд зориулан босгосон Сүнчиг агсны “Хурдан хар азарганы хөшөө”-ний нээлтийн арга хэмжээ /Бөмбөн толгой/',
        hour: '11:40',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Шүдлэн насны морьд мордох',
        hour: '07:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Хар морьт сахиусны Ядам, ДамдинЯнсан тахилга хурна',
        hour: '07:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Үндэсний шагайн харваа',
        hour: '09:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Шүдлэн насны морьдыг барих',
        hour: '10:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Хар морьт сахиусны “Их тахилга” хурна',
        hour: '10:30',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Даамны тэмцээн',
        hour: '10:30',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Хязаалан насны морьд мордох',
        hour: '11:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Цолгүй залуу 32 бөхийн барилдаан',
        hour: '11:00',
      ),
      DateData(
        date: '2024.07.15',
        event:
            '3*3 сагсан бөмбөгийн талбайн нээлт, Хүүхдүүдийн сагсан бөмбөгийн тэмцээн /2 насны ангиллаар/',
        hour: '11:30',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Үндэсний сурын харваа',
        hour: '12:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Хязаалан насны морьдыг барих',
        hour: '13:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Хар морьт сахиусны “Сорын хурал” хурна',
        hour: '13:00',
      ),
      DateData(
        date: '2024.07.15',
        event:
            'МУГЖ Г.Өлзийсайханы ахан дүүсийн “АЯЛГУУ ЭГШГИЙН ҮРГЭЛЖЛЭЛ” тоглолт',
        hour: '14:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Эрлийз дунд насны морьд мордох',
        hour: '15:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Эрлийз дунд насны морьд мордох',
        hour: '16:00',
      ),
      DateData(
        date: '2024.07.15',
        event: '100 жилийн ойн “Баярын хурал”',
        hour: '17:00',
      ),
      DateData(
        date: '2024.07.15',
        event: 'Баяр наадмын хүндэтгэлийн концерт',
        hour: '19:00',
      ),
      DateData(
        date: '2024.07.15',
        event:
            'Ахмад, дунд үеийнхэнд зориулсан “Хүндэтгэл-100” үдэшлэг цэнгүүн',
        hour: '21:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Их насны морьд мордох',
        hour: '06:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Их насны морьдыг барих',
        hour: '09:00',
      ),
      DateData(
        date: '2024.07.16',
        event:
            'Түүхт 100 жилийн ойн баяр наадмын нээлтийн үйл ажиллагаа /тусгай хөтөлбөрөөр/',
        hour: '10:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Азарга мордох',
        hour: '12:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Үндэсний бөхийн барилдааны 1-ийн даваа /128/',
        hour: '12:30',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Үндэсний сур, шагайн харваа, шатрын тэмцээний үргэлжлэл',
        hour: '12:30',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Өсвөрийн бөхийн барилдаан',
        hour: '13:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Азарга барих',
        hour: '14:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Азарга барих',
        hour: '14:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Хос морьтон шалгаруулах',
        hour: '14:00',
      ),
      DateData(
        date: '2024.07.16',
        event:
            'Дугуйн спортын мастер Ш.Очирбатын нэрэмжит “Өсвөр үеийнхний дугуйн тэмцээн” / эрэгтэй 3 насны ангилал, эмэгтэй 2 насны ангилалаар/',
        hour: '14:00',
      ),
      DateData(
        date: '2024.07.16',
        event:
            'Төрийн шагнал, сум байгуулагдсаны 100 жилийн ойн медаль гардуулах хүндэтгэлийн арга хэмжээ',
        hour: '14:30',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Эрлийз дээд насны морьд мордох',
        hour: '15:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Хүчит бөхийн барилдааны 2-ын даваа',
        hour: '15:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Жороо морьтон шалгаруулах',
        hour: '16:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Сонгомол дээд насны морьдыг барих',
        hour: '17:00',
      ),
      DateData(
        date: '2024.07.16',
        event:
            'Тосонцэнгэл сумын ардын авьяастнууд, биет бус өвлөн уламжлагчдын “Нутагтаа өргөх дуулал” хүндэтгэлийн тоглолт',
        hour: '17:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Хүлээн авалтын арга хэмжээ',
        hour: '19:00',
      ),
      DateData(
        date: '2024.07.16',
        event: 'Дунд, залуу үеийнхэнд зориулсан “Бахархал-100” шоу',
        hour: '21:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Соёолон насны морьд мордох',
        hour: '06:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Соёолон насны морьдыг барих',
        hour: '09:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Үндэсний бөхийн барилдааны 3, 4-ийн даваа',
        hour: '10:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Дааган насны морьд мордох',
        hour: '10:00',
      ),
      DateData(
        date: '2024.07.17',
        event:
            'Төрийн шагнал, сум байгуулагдсаны 100 жилийн ойн медаль гардуулах хүндэтгэлийн арга хэмжээ',
        hour: '11:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Дааган насны морьдыг барих',
        hour: '12:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Заан цолтноос доош бөхчүүдийн барилдаан',
        hour: '12:30',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Эрлийз бага насны морьд мордох',
        hour: '13:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Үндэсний бөхийн барилдааны 5, 6-ийн даваа',
        hour: '13:30',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Эрлийз бага насны морьдыг барих',
        hour: '14:30',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Эрлийз дээд насны морьд мордох',
        hour: '15:00',
      ),
      DateData(
        date: '2024.07.17',
        event:
            'Сур, шагай, шатар, даам, сагсны бөмбөгийн тэмцээний шагнал гардуулах',
        hour: '15:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Үндэсний бөхийн барилдааны 7-ийн даваа',
        hour: '16:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Түрүүлж айрагдсан морьдыг цоллох, бай шагнал гардуулах',
        hour: '16:30',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Бөхийн шагнал гардуулах',
        hour: '17:30',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Баяр наадмын хаалтын үйл ажиллагаа',
        hour: '18:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Залуучуудад зориулсан “Үргэлжлэл” шоу',
        hour: '19:00',
      ),
      DateData(
        date: '2024.07.17',
        event: 'Хүндэтгэлийн хүлээн авалт',
        hour: '20:00',
      ),
      DateData(
        date: '2024.07.18',
        event: 'Зочдыг үдэх',
        hour: '',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffF2F2F7),
      appBar: CustomAppBar(
        title: date,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: programs.where((e) {
                    return e.date == date;
                  }).length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    List filteredPrograms = programs.where((e) {
                      return e.date == date;
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
                              filteredPrograms[index].hour,
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
                              filteredPrograms[index].event,
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
