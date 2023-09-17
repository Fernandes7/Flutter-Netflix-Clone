import 'package:netflix/Core/Colors/stringconstant.dart';
import 'package:netflix/Infrastructure/apikey.dart';

class Apikeys {
  static const downlods = "$kBaseUrl/trending/all/day?api_key=$apikey";
  static const search =
      "$kBaseUrl/search/movie?query=spiderman&api_key=$apikey";
}
