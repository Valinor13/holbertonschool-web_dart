import 'dart:convert';
import '3-main.dart';

// greetUser - calls fetchUserData() and converts to json object
//             uses try catch to handle asnyc errors
// returns: string hello $username
Future<String> greetUser() async {
  try {
    final Map<String, dynamic> userData =
        await json.decode(await fetchUserData());
    return 'hello ${userData['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

// loginUser - calls checkCredentials() and calls greetUser() if true
//             uses try catch to handle asnyc errors
// returns: string "Wrong credentials" if false, else returns the result
//          of greetUser()
Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
