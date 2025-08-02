import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:further/service/post_model.dart';
import 'package:http/http.dart' as http;

class GetRequestExample extends StatefulWidget {
  @override
  _GetRequestExampleState createState() => _GetRequestExampleState();
}

class _GetRequestExampleState extends State<GetRequestExample> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  var url = Uri.https('jsonplaceholder.typicode.com', 'posts');

  @override
  initState() {
    super.initState();
    name = 'yaiz';
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {'User-Agent': 'FlutterApp/1.0', 'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data is List) {
          setState(() {
            _items = data.map((e) => PostModel.fromJson(e)).toList();
          });
        }
        print('Başarılı veri çekildi: ${data.length} item');
      } else {
        print('Sunucu Hatası: ${response.statusCode}');
      }
    } catch (e) {
      print('İstek atılamadı: $e');
    }

    setState(() {
      _isLoading = false;
    });
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
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required PostModel? model,
  }) : _model = model, super(key: key);

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
