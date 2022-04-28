import 'dart:convert';
import 'package:http/http.dart' as http;

// generateQuote - fetch first quote from character and corresponding id
//   http request https://breakingbadapi.com/api/quotes/@id to get quote
//   use try catch to handle async errors on error print('There is no quotes')
// @id: id of the character
// return: returns Future<String> of quote
Future<String> generateQuote(int id) async {
  try {
    // get the data from the url
    var response =
        await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'));
    // decode the data
    var quote = json.decode(response.body);
    // print the data
    return "${quote[0]['author']} : ${quote[0]['quote']}";
  } catch (e) {
    return 'There is no quotes';
  }
}
