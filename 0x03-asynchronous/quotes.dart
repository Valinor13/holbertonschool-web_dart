import 'dart:convert';
import 'package:http/http.dart' as http;

// generateQuote - fetch first quote from character and corresponding id
//   http request https://breakingbadapi.com/api/characters/@id to get name
//   http request https://breakingbadapi.com/api/quotes/@id to get quote
//   use try catch to handle async errors on error print('There is no quotes')
// @id: id of the character
// return: returns Future<String> of quote
Future<String> generateQuote(int id) async {
  try {
    // get the name from the url
    var response1 = await http
        .get(Uri.parse('https://breakingbadapi.com/api/characters/$id'));
    // decode the data
    var name = json.decode(response1.body)[0]['name'];
    // get the data from the url
    var response2 =
        await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'));
    // decode the data
    var quote = json.decode(response2.body);
    // print the data
    return "$name : ${quote[0]['quote']}";
  } catch (e) {
    return 'There is no quotes';
  }
}
