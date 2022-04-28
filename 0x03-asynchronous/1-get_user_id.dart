import 'dart:convert';
import '1-main.dart';

// getUserId - returns a Future<String> of the user id
// return: returns a Future<String> of the user id
Future<String> getUserId() async {
  // get the user data and decode it from a json string to a Map object
  final Map<dynamic, dynamic> userData =
      await json.decode(await fetchUserData());
  return userData['id'];
}
