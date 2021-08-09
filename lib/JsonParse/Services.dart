import 'package:beta_weddin/JsonParse/User.dart';
import 'package:http/http.dart' as http;





class Services {
  static const String url = "https://jsonplaceholder.typicode.com/users";

  static Future<List<User>> getUser() async {
    try{
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200){
        final List<User> users = userFromJson(response.body);
        return users;
      }else{
        return List.empty();
      }
    } catch(e){
      return List.empty();
    }

  }
}