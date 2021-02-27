import 'dart:convert';
import 'package:http/http.dart';
import '../api_prov/model_prov.dart';

class GetPost {
  final String getprov = "https://api.kawalcorona.com/indonesia/provinsi";

  //MENGAMBIL DATA
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getprov);
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
