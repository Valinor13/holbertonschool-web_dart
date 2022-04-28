class User {
  String? name;
  int? age;
  double? height;
  User (String name, int age, double height) {
    this.name = name;
    this.age = age;
    this.height = height;
  }
  Map toJson() => {
    'name': name,
    'age': age,
    'height': height
  };
}