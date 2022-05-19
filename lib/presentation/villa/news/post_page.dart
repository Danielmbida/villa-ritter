import 'package:apptest/presentation/core/const.dart';
import 'package:apptest/presentation/villa/url_launcher.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';
// ignore: depend_on_referenced_packages
import 'package:html/dom.dart' as dom;
import 'package:wordpress_api/wordpress_api.dart';

// ignore: must_be_immutable
class PostPage extends StatelessWidget {
  Post post;
  PostPage(this.post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff20544c),
        title: Text(
          Const.capitalize(
            // ignore: avoid_escaping_inner_quotes
            post.title.toString().replaceAll('&rsquo;', '\''),
          ),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Html(
                data: post.content!.replaceAll("<br>", " "),
                onLinkTap: (
                  String? url,
                  RenderContext context,
                  Map<String, String> attributes,
                  dom.Element? element,
                ) {
                  UrlLauncher.launchURL(url!);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
