import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tosontsengel_app/Model/NewsModel.dart';
import 'package:tosontsengel_app/Utils/CustomAppBar.dart';

@RoutePage()
// ignore: must_be_immutable
class NewsDetailPage extends StatelessWidget {
  NewsDetailPage({super.key, this.news});

  NewsModel? news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Дэлгэрэнгүй',
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                news!.title!,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Image.network(
                'https://tosontsengel.khs.gov.mn/uploads/news/${news!.images!}',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.6,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(news!.content!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
