import 'dart:convert';

List<Chocolate> chocolateFromJson(String str) =>
    List<Chocolate>.from(json.decode(str).map((x) => Chocolate.fromJson(x)));

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

  factory Chocolate.fromJson(Map<String, dynamic> json) => Chocolate(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
