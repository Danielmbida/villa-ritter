// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connectivity_cubit.freezed.dart';
part 'connectivity_state.dart';

@injectable
class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;

  InternetCubit({required this.connectivity})
      : super(const InternetState.disconnected(InternetType.none())) {
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) async {
      if (connectivityResult == ConnectivityResult.wifi) {
        if (await isInternet()) {
          emitConnected(const InternetType.wifi());
        } else {
          emitDisconnected(const InternetType.wifi());
        }
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitConnected(const InternetType.mobileData());
      } else if (connectivityResult == ConnectivityResult.none) {
        emitDisconnected(const InternetType.none());
      }
    });
  }

  void dispose() {
    connectivityStreamSubscription.cancel();
  }

  Future<bool> isInternet() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
      final result2 = await InternetAddress.lookup('1.1.1.1');
      if (result2.isNotEmpty && result2[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }

  void emitConnected(InternetType type) => emit(InternetState.connected(type));
  void emitDisconnected(InternetType type) =>
      emit(InternetState.disconnected(type));
}
