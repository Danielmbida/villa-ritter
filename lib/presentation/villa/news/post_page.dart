import 'package:apptest/presentation/core/const.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';
// ignore: depend_on_referenced_packages
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';
import 'package:wordpress_api/wordpress_api.dart';

// ignore: must_be_immutable
class PostPage extends StatelessWidget {
  Post post;
  String imageurl;
  PostPage(this.post, this.imageurl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff20544c),
        title: Text(
          Const.capitalize(
            // ignore: avoid_escaping_inner_quotes
            imageurl.toString().replaceAll('&rsquo;', '\''),
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
              // Text(
              //   Const.capitalize(
              //     // ignore: avoid_escaping_inner_quotes
              //     imageurl.toString().replaceAll('&rsquo;', '\''),
              //   ),
              //   style: const TextStyle(
              //     color: Colors.black,
              //     fontSize: 25,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // const Divider(
              //   color: Colors.white,
              //   thickness: 5,
              // ),
              Html(
                data: post.content!.replaceAll('\n', " "),
                // style: {".elementor-widget-container": Style(padding: EdgeInsets.zero,)},
                onLinkTap: (
                  String? url,
                  RenderContext context,
                  Map<String, String> attributes,
                  dom.Element? element,
                ) {
                  _launchUrl(url!);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _launchUrl(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Cannot launch $link';
    }
    return link;
  }
}
