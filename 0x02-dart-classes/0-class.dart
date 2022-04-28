class User {
  var name;

  String get getName {
    return name;
  }

  set setName(String userName) {
    name = userName;
  }

  String showName() {
    return 'Hello, ${this.name}';
  }
}
