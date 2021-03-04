import 'package:flutter/foundation.dart';

class Post {
  //DEFINISIK AN KEY NYA

  // ignore: non_constant_identifier_names
  final String Provinsi;
  // ignore: non_constant_identifier_names
  final int Kasus_Posi;
  // ignore: non_constant_identifier_names
  final int Kasus_Semb;
  // ignore: non_constant_identifier_names
  final int Kasus_Meni;

  //DEFINISI KANKE OBJECT
  Post(
      // ignore: non_constant_identifier_names
      {@required this.Provinsi,
      // ignore: non_constant_identifier_names
      @required this.Kasus_Posi,
      // ignore: non_constant_identifier_names
      @required this.Kasus_Semb,
      // ignore: non_constant_identifier_names
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
