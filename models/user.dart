class User {
  String loginName;
  String password;

  User(
    this.loginName,
    this.password,
  );
  @override
  String toString() {
    return "$loginName";
  }
}
