// usersCount - prints the number of users. get user count
// from fetchUsersCount(), which returns a Future<int>
// return: returns a void future of a print statement
import '0-main.dart';

Future<void> usersCount() async {
  print(await fetchUsersCount());
}
