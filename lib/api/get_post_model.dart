import 'package:flutter/foundation.dart';

class Post {
  //DEFINISIK AN KEY NYA
  final String Provinsi;
  final int Kasus_Posi;
  final int Kasus_Semb;
  final int Kasus_Meni;

  //DEFINISI KANKE OBJECT
  Post(
      {@required this.Provinsi,
      @required this.Kasus_Posi,
      @required this.Kasus_Semb,
      @required this.Kasus_Meni});

  //MENAMPUNG DATA DENGAN FORMAT JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        Provinsi: json['attributes']['Provinsi'] as String,
        Kasus_Posi: json['attributes']['Kasus_Posi'] as int,
        Kasus_Semb: json['attributes']['Kasus_Semb'] as int,
        Kasus_Meni: json['attributes']['Kasus_Meni'] as int);
  }
}
