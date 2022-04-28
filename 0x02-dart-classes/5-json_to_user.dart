class User {
  String? name;
  int? age;
  double? height;
  int? id;
  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height});

  static User fromJson(Map<dynamic, dynamic> userJson) => User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height']);

  Map toJson() => {'id': id, 'name': name, 'age': age, 'height': height};

  String toString() => 'User(id: $id, name: $name, age: $age, height: $height)';
}
