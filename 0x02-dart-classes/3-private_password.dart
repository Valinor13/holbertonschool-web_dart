class Password {
  var _password;

  Password({required String? password}) {
    this._password = password;
  }

  bool isValid() =>
      this._password.length >= 8 &&
      this._password.length <= 16 &&
      this._password.contains(new RegExp(r'[a-z]')) &&
      this._password.contains(new RegExp(r'[A-Z]')) &&
      this._password.contains(new RegExp(r'[0-9]'));

  String toString() {
    return 'Your Password is: ${this._password}';
  }
}
