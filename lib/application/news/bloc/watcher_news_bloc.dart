import 'dart:async';

import 'package:apptest/domain/news/i_news_repository.dart';
import 'package:apptest/domain/news/news_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:wordpress_api/wordpress_api.dart';

part 'watcher_news_event.dart';
part 'watcher_news_state.dart';
part 'watcher_news_bloc.freezed.dart';

@injectable
class WatcherNewsBloc extends Bloc<WatcherNewsEvent, WatcherNewsState> {
  final INewsRepository _iNewsrepository;
  StreamSubscription<Either<NewsFailure, KtList<Post>>>?
      _newsStreamSubscription;

  WatcherNewsBloc(this._iNewsrepository) : super(const _Initial()) {
    on<_WatchNewsStarted>((event, emit) async {
      await _newsStreamSubscription?.cancel();
      _newsStreamSubscription =
          _iNewsrepository.watchAllNews().asStream().listen(
                (failuresOrNews) =>
                    add(WatcherNewsEvent.newsReceived(failuresOrNews)),
              );
    });
    on<_NewsReceived>((event, emit) {
      emit(
        event.failuresOrNews.fold(
          (f) => WatcherNewsState.loadFailure(f),
          (listNews) => WatcherNewsState.loadSuccess(listNews),
        ),
      );
    });
  }
}
