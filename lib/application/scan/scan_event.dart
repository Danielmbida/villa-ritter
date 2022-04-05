part of 'scan_bloc.dart';

@freezed
class ScanEvent with _$ScanEvent {
  const factory ScanEvent.scanCheckRequested(String codeQR) = _ScanCheckRequested;
  const factory ScanEvent.scanDisplayErrorRequested() = _ScanDisplaErrorRequested;
  const factory ScanEvent.scanResetted() = _ScanResetted;
}
