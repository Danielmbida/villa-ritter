import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/news/bloc/watcher_news_bloc.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wordpress_api/wordpress_api.dart';
import 'package:http/http.dart' as http;
import 'package:auto_route/auto_route.dart';

import '../core/const.dart';

class DisplayNews extends StatefulWidget {
  const DisplayNews({
    Key? key,
  }) : super(key: key);

  @override
  _DisplayNewsState createState() => _DisplayNewsState();
}

class _DisplayNewsState extends State<DisplayNews> {
  String? imgUrl;

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<WatcherNewsBloc, WatcherNewsState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          loadFailure: (_) {
            return const Text("erreur");
          },
          loadSuccess: (data) {
            return SizedBox(
              height: mediaHeight * 0.56, //447 56%
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: data.listPosts.size,
                itemBuilder: (content, index) {
                  final Post actPost = data.listPosts[index];
                  if (actPost.title != "Site en construction") {
                    return Card(
                      child: GestureDetector(
                        onTap: () {
                          context.router.push(
                            PostRoute(post: actPost, imageurl: actPost.title!),
                          );
                        },
                        child: SizedBox(
                          height: mediaHeight * 0.5, //450,
                          child: actPost.featuredMedia! > 0
                              ? _displayImage(
                                  actPost.featuredMedia!,
                                )
                              : _displayTitle(
                                  actPost.title!,
                                ),
                        ),
                      ),
                    );
                  } else {
                    return const Text("");
                  }
                },
              ),
            );
          },
        );
      },
    );
  }

  ///Affichage de l'image d'un article
  SizedBox _displayImage(int mediaID) {
    return SizedBox(
      child: FutureBuilder(
        future: fetchWpPostImageUrl(mediaID),
        builder: (BuildContext context, AsyncSnapshot<Media?> snapshot) {
          imgUrl = snapshot.data?.sourceUrl;
          if (imgUrl == null) {
            return Center(
              child: _displayTitle("Article"),
            );
          }
          return Image.network(
            imgUrl!,
          );
        },
      ),
    );
  }

  ///Afficher le titre de l'article lorsque celui-ci
  ///ne contient pas d'image
  SizedBox _displayTitle(String title) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    final double mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.all(15.0 / mediaHeight * mediaHeight),
        child: Column(
          children: [
            Text(
              Const.capitalize(
                // ignore: avoid_escaping_inner_quotes
                title.replaceAll('&rsquo;', '\''),
              ),
              style: TextStyle(
                fontSize: mediaWidth * 0.09,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: mediaHeight * 0.040),
            Icon(
              FontAwesomeIcons.newspaper,
              size: mediaHeight * 0.20,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  ///Cette méthode permet de récupérer les articles du site
  ///villa ritter
  Future<List<Post>> fetchPost() async {
    // final api = WordPressAPI('https://dand.cidisi.ch/');
    final api = WordPressAPI('https://www.villa-ritter.ch/');
    final res = await api.posts.fetch();
    final List<Post> news = [];

    for (final post in res.data as List<Post>) {
      news.add(post);
      // print(post.featuredMedia);
    }
    return news;
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
    print(response.body);
    return Media.fromJson(response.body);
  }
}
