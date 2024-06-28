import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class Services {
  void launchURL(String link) async {
    final Uri url = Uri.parse(link); // Replace with your desired URL
    try {
      await launchUrl(url);
    } on SocketException {
      Fluttertoast.showToast(
        msg: 'No Internet',
        toastLength: Toast.LENGTH_SHORT,
      );
    } catch (e) {
      print('Could not launch $url');
    }
  }
}
