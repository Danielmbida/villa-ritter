import 'package:url_launcher/url_launcher.dart';

// ignore: avoid_classes_with_only_static_members
class UrlLauncher {
  ///Permet l'ouverture des liens des application
  // ignore: avoid_void_async
  static void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
