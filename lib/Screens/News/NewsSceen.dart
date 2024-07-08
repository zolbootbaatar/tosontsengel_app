import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tosontsengel_app/Service/News.dart';
import 'package:tosontsengel_app/Routes/AppRouter.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';

@RoutePage()
class NewsPage extends HookConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = useState(false);

    final newsFuture = useMemoized(
      () => NewsService().getNewss(),
      [notifier.value],
    );

    final newsSnapShot = useFuture(newsFuture);

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Мэдээ',
      ),
      body: newsSnapShot.connectionState == ConnectionState.done
          ? Container(
              padding: const EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: newsSnapShot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(
                          NewsDetailRoute(news: newsSnapShot.data![index]));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://tosontsengel.khs.gov.mn/uploads/news/${newsSnapShot.data![index].images!}',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              newsSnapShot.data![index].title!,
                              style: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
