// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/news/bloc/watcher_news_bloc.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:apptest/presentation/villa/news/news_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
              return Container(
                color: const Color(0xff20544c),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            AppLocalizations.of(context)!
                                .news_string
                                .toUpperCase(),
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 11,
                        ),
                        itemCount: data.listPosts.size,
                        itemBuilder: (content, index) {
                          final Post actPost = data.listPosts[index];
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.router.push(
                                    PostRoute(post: actPost),
                                  );
                                },
                                child: NewsForm(
                                  mediaID: actPost.featuredMedia,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Divider(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
