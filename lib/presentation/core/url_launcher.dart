import 'package:url_launcher/url_launcher.dart';

// ignore: avoid_classes_with_only_static_members
class UrlLauncher {
  ///Permet l'ouverture des liens des application
  // ignore: avoid_void_async
  static void launchURL(String webUrl, String nativeUrl) async {
    final Uri webUri = Uri.parse(webUrl);
    final Uri nativeUri = Uri.parse(nativeUrl);
    if (await canLaunchUrl(nativeUri)) {
      await launchUrl(
        nativeUri,
      );
    } else if (await canLaunchUrl(webUri)) {
      await launchUrl(
        webUri,
      );
    } else {
      throw 'Could not launch $webUrl';
    }
  }
}
