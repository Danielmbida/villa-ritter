// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wordpress_api/wordpress_api.dart';

class NewsForm extends StatelessWidget {
  const NewsForm({Key? key, required this.mediaID}) : super(key: key);
  final int? mediaID;

  @override
  Widget build(BuildContext context) {
    String? imgUrl;
    return SizedBox(
      child: FutureBuilder(
        future: fetchWpPostImageUrl(mediaID!),
        builder: (BuildContext context, AsyncSnapshot<Media?> snapshot) {
          imgUrl = snapshot.data?.sourceUrl;
          if (imgUrl == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Image.network(
            imgUrl!,
          );
        },
      ),
    );
  }

  /// Cette méthode permet de récupére l'image d'un arcticle
  Future<Media> fetchWpPostImageUrl(int mediaID) async {
    final response = await http.get(
      Uri.parse(
        "https://www.villa-ritter.ch/?rest_route=/wp/v2/media/$mediaID",
      ),
      // Uri.parse("https://dand.cidisi.ch/wp-json/wp/v2/media/$mediaID"),
      headers: {"Accept": "application/json"},
    );
    return Media.fromJson(response.body);
  }
}
