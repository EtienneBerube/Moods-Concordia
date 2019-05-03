import 'package:moods_concordia/models/break.dart';

class User{
  String id;
  String name;
  List<String> friends;
  double lat;
  double long;
  DateTime lastUpdate;
  List<Break> breaks;

  User(this.id, this.name, this.friends, this.lat, this.long, this.lastUpdate,
      this.breaks);

  User.fromDb(Map<String, dynamic> map){
    this.id = map['id'];
    this.name = map['name'];
    this.friends= map['friends']; // might need to parse
    this.lat= map['lat'];
    this.long = map['long'];
    this.lastUpdate= map['lastUpdate'];
    this.breaks= map['breaks']; //might need to parse
  }
}
