/* import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:further/service/post_model.dart';

class GetRequestExample extends StatefulWidget {
  @override
  _GetRequestExampleState createState() => _GetRequestExampleState();
}

class _GetRequestExampleState extends State<GetRequestExample> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = true;
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      headers: {
        'Authorization': 'Bearer your_token_here',
        'User-Agent': 'Mozilla/5.0',
        'Accept': 'application/json',
      },
    ),
  );

  @override
  void initState() {
    super.initState();
    name = 'abüü!!';
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    final response = await dio.get('/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return PostCard(model: _items?[index]);
        },
      ),
    );
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }
}

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required PostModel? model})
    : _model = model,
      super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}

*/