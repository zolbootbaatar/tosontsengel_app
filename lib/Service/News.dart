import 'package:tosontsengel_app/Service/index.dart';
import 'package:tosontsengel_app/Model/NewsModel.dart';

class NewsService {
  Future<List<NewsModel>> getNewss() async {
    final response = await ApiService().getRequest(
      '/api/news/list',
    );

    List<NewsModel> newsModel;
    newsModel = (response.data['data'] as List)
        .map((e) => NewsModel.fromJson(e))
        .toList();

    return newsModel;
  }
}
