part of 'connectivity_cubit.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState.connected(InternetType type) = _Connected;
  const factory InternetState.disconnected(InternetType type) = _Disconnected;
}

@freezed
class InternetType with _$InternetType {
  const factory InternetType.wifi() = _Wifi;
  const factory InternetType.mobileData() = _MobileData;
  const factory InternetType.none() = _None;
}

