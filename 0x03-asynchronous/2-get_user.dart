import '2-main.dart';

// getUser - prints json string of user return from fetchUser() call
//           uses try catch to handle asnyc errors
// return: returns a void future of a print statement
Future<void> getUser() async {
  try {
    print(await fetchUser());
  } catch (e) {
    print('error caught: $e');
  }
}
