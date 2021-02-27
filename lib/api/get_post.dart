import 'dart:convert';
import 'package:http/http.dart';
import '../api/get_post_model.dart';

class GetPost {
  final String getposturl = "https://api.kawalcorona.com/indonesia/provinsi";

  //MENGAMBIL DATA
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);
    //MENGUBAH JSON KE STRING
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      //DATA DITAMPUNG KEDALAM LIST DIMODEL POST DAN DIRUBAH KE FORMAT JSON
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data Tidak Ada";
    }
  }
}
