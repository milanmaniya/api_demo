import 'package:api_demo/get_api/comment_model.dart';
import 'package:http/http.dart' as http;

class NetworkApi {
  static String commentUrl = 'https://jsonplaceholder.typicode.com/comments';

  static Future<List<Chocolate>> fetchCommentData() async {
    final response = await http.get(Uri.parse(commentUrl));

    if (response.statusCode == 200) {
      // log(response.body);

      return chocolateFromJson(response.body);
    } else {
      throw Exception("Sum error occured");
    }
  }
}
