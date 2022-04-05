part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState.initial() = _Initial;
  const factory ScanState.scanFail() = _ScanFail;
  const factory ScanState.sucess(String code) = _Sucess;
  const factory ScanState.scanTimeout() = _ScanTimeout;


}
