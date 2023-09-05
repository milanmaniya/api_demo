import 'dart:convert';

String chocolateToJson(List<Chocolate> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Chocolate {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Chocolate({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
