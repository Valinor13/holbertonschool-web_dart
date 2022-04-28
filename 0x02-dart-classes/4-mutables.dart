class Password {
  var _password;

  String get password => _password;

  set password(String password) => _password = password;


  Password({required String password}) : _password = password;
  

  bool isValid() =>
      password.length >= 8 &&
      password.length <= 16 &&
      password.contains(new RegExp(r'[a-z]')) &&
      password.contains(new RegExp(r'[A-Z]')) &&
      password.contains(new RegExp(r'[0-9]'));

  String toString() {
    return 'Your Password is: ${password}';
  }
}
