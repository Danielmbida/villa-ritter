import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';
import 'package:wordpress_api/wordpress_api.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  String title = "";
  String content = "";
  @override
  void initState() {
    setState(() {
      getAllNews();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8d0103),
      body: Stack(
        children: [
          FutureBuilder(
            future: getAllNews(),
            builder:(BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
              if (snapshot.connectionState == ConnectionState.none) {
                return const Center(
                    child: Text("Pas de nouvelle pour le moment"),);
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Les Nouvelles",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 5,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (content, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.data![index].title.toString(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Html(
                                    data: snapshot.data![index].content,
                                    onLinkTap: (String? url,
                                        RenderContext context,
                                        Map<String, String> attributes,
                                        dom.Element? element) {
                                      _launchUrl(url!);
                                    },
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }

  // ignore: always_declare_return_types
  _launchUrl(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Cannot launch $link';
    }
  }

  Future<List<Post>> getAllNews() async {
    final api = WordPressAPI('http://www.villa-ritter.ch');
    final res = await api.posts.fetch();
    final List<Post> news = [];

    for (final media in res.data as List<Post>) {
      news.add(media);
    }
    return news;
  }
}
