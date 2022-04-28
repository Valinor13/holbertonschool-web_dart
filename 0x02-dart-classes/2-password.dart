class Password {
  var password;

  String get getPassword => password;

  set setPassword(String userPass) => password = userPass;

  bool isValid() =>
      password.length >= 8 &&
      password.length <= 16 &&
      password.contains(new RegExp(r'[a-z]')) &&
      password.contains(new RegExp(r'[A-Z]')) &&
      password.contains(new RegExp(r'[0-9]'));

  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
