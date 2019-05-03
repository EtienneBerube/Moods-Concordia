class AuthUser{
  String id;
  String email;
  String password_hashed;
  String user_id;

  AuthUser(this.id, this.email, this.password_hashed, this.user_id);

  AuthUser.FromDb(Map<String, dynamic> map){
    this.id = map['_id'];
    this.email = map['email'];
    this.password_hashed = map['password'];
    this.user_id = map['user_id'];
  }
}