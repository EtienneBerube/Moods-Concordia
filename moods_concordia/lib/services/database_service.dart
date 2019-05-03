import 'package:mongo_dart/mongo_dart.dart';
import 'package:moods_concordia/models/auth_user.dart';
import 'package:moods_concordia/models/user.dart';

class DatabaseService{
  static final DatabaseService db = new DatabaseService._internal();
  static String _url = 'mongodb://dart_app:dart_app_pwd@moods-concordia-shard-00-00-jvmht.mongodb.net:27017,moods-concordia-shard-00-01-jvmht.mongodb.net:27017,moods-concordia-shard-00-02-jvmht.mongodb.net:27017/test?ssl=true&replicaSet=Moods-Concordia-shard-0&authSource=admin&retryWrites=true';
  Db _mongo;

  factory DatabaseService(){
    return db;
  }

  DatabaseService._internal(){
    this._mongo = new Db(_url);
  }

  Db getMongo(){
    return _mongo;
  }

  Future<AuthUser> getAuthUserByEmail(String email) async{
    var user = await _mongo.collection('auth_users').findOne(where.eq("email", email));
    if(user == null){
      return null;
    }else {
      return AuthUser.FromDb(user);
    }
  }

  Future<User> getUserById(String id) async{
    var user = await _mongo.collection('users').findOne(where.eq("id", id));
    if(user == null){
      return null;
    }else {
      return AuthUser.FromDb(user);
    }
  }

  Future<User> createUser(String email, String password, String name) async{

  }

}