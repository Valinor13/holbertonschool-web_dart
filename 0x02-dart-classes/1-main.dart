import '1-usertojson.dart';

void main() {
  String name = 'Youssef';
  int age = 25;
  double height = 1.89;
  final user = User(name, age, height);
print(user.toJson());
}
