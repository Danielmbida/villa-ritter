import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@injectable
class Connectiv {
  Connectivity get connectivity => Connectivity();
}