import 'dart:convert';

import '1-main.dart';

Future<String> getUserId() async {
  final Map<dynamic, dynamic> userData = await json.decode(await fetchUserData());
  return userData['id'];
}
