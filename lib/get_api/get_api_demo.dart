import 'package:api_demo/get_api/comment_model.dart';
import 'package:api_demo/get_api/network_api.dart';
import 'package:flutter/material.dart';

class GetApiDemo extends StatefulWidget {
  const GetApiDemo({super.key});

  @override
  State<GetApiDemo> createState() => _GetApiDemoState();
}

class _GetApiDemoState extends State<GetApiDemo> {
  late Future<List<Chocolate>> futureCommentData;

  @override
  void initState() {
    futureCommentData = NetworkApi.fetchCommentData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: FutureBuilder(
        future: futureCommentData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].email),
                leading: CircleAvatar(
                  child: Text(snapshot.data![index].postId.toString()),
                ),
                subtitle: Text(snapshot.data![index].name),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
