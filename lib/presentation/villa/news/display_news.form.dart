import 'package:apptest/application/news/bloc/watcher_news_bloc.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:apptest/presentation/villa/news/news_form.dart';
// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordpress_api/wordpress_api.dart';

class DisplayNews extends StatefulWidget {
  const DisplayNews({
    Key? key,
  }) : super(key: key);

  @override
  _DisplayNewsState createState() => _DisplayNewsState();
}

class _DisplayNewsState extends State<DisplayNews> {
  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => getIt<WatcherNewsBloc>()
        ..add(const WatcherNewsEvent.watchNewsStarted()),
      child: BlocBuilder<WatcherNewsBloc, WatcherNewsState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loadFailure: (_) {
              return const Text("erreur");
            },
            loadInProgress: (_) {
              return const Center(child: CircularProgressIndicator());
            },
            loadSuccess: (data) {
              return SizedBox(
                height: mediaHeight * 0.56, //447 56%
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: data.listPosts.size,
                  itemBuilder: (content, index) {
                    final Post actPost = data.listPosts[index];
                    return Card(
                      child: GestureDetector(
                        onTap: () {
                          context.router.push(
                            PostRoute(post: actPost),
                          );
                        },
                        child: SizedBox(
                          height: mediaHeight * 0.5,
                          child: NewsForm(
                            mediaID: actPost.featuredMedia,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

}
