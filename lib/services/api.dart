import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quote_me_app/model/Quotes.dart';

Future<Quotes> fetchQuotes() async {

    String url = 'https://quote-me-app.herokuapp.com/api/quote';

    final response =
        await http.get("$url");
        
    if (response.statusCode == 200) {
      // Parse the JSON.
      return Quotes.fromJson(json.decode(response.body));
    } else {
      // Throw an error.
      throw Exception('Failed to load post');
    }
}