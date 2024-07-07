import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tosontsengel_app/Service/Donation.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';
import 'package:tosontsengel_app/Model/DonationModel.dart';

@RoutePage()
class DonationPage extends HookConsumerWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = useState(false);

    final donationFuture = useMemoized(
      () => DonationService().getDonations(),
      [notifier.value],
    );

    final donationSnapShot = useFuture(donationFuture);

    if (donationSnapShot.connectionState == ConnectionState.waiting) {
      return const Scaffold(
        appBar: CustomAppBar(
          title: 'Хандивын мэдээлэл',
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (donationSnapShot.hasError) {
      return const Scaffold(
        appBar: CustomAppBar(
          title: 'Хандивын мэдээлэл',
        ),
        body: Center(
          child: Text('Алдаа гарлаа'),
        ),
      );
    }

    List<DonationModel> donations = donationSnapShot.data!;

    final List<ChartData> chartData = donations.map((donation) {
      return ChartData(
        donation.subject ?? 'Unknown',
        double.tryParse(donation.amount ?? '0') ?? 0,
        Colors.primaries[donations.indexOf(donation) % Colors.primaries.length],
      );
    }).toList();

    final double totalAmount = donations.fold(0, (sum, donation) {
      return sum + (double.tryParse(donation.amount ?? '0') ?? 0);
    });

    String moneyFormatter({double? amount}) {
      MoneyFormatter fmf = MoneyFormatter(amount: amount!);
      return fmf.output.withoutFractionDigits;
    }

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Хандивын мэдээлэл',
      ),
      body: donationSnapShot.connectionState == ConnectionState.done
          ? Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text(
                    'Хандилагчид',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SfCircularChart(
                    annotations: [
                      CircularChartAnnotation(
                        widget: Container(),
                      ),
                      CircularChartAnnotation(
                        widget: Text(
                          '${moneyFormatter(amount: totalAmount)}₮',
                          style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontSize: 15),
                        ),
                      )
                    ],
                    series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                        dataSource: chartData,
                        pointColorMapper: (ChartData data, _) => data.color,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        innerRadius: '70%',
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: donations.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffd3d3d3),
                                blurRadius: 8,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 6,
                                child: Text(
                                  donations[index].subject!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 4,
                                child: Text(
                                  '${moneyFormatter(amount: double.tryParse(donations[index].amount ?? '0') ?? 0)}₮',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff10618D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
