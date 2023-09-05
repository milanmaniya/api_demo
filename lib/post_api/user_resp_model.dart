import 'dart:convert';

UserResp userRespFromJson(String str) => UserResp.fromJson(json.decode(str));

class UserResp {
  int id;

  UserResp({
    required this.id,
  });

  factory UserResp.fromJson(Map<String, dynamic> json) => UserResp(
        id: json["id"],
      );
}
