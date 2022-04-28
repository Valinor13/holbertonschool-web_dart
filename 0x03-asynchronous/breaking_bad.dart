import 'dart:convert';
import 'package:http/http.dart' as http;

// printBbCharacters() - prints all the characters from the breaking bad yaml
//   http request https://breakingbadapi.com/api/characters to get data
//   use try catch to handle async errors
// return: returns Future<void> of print
Future<void> printBbCharacters() async {
  try {
    // get the data from the url
    var response = await http.get(Uri.parse('https://breakingbadapi.com/api/characters'));
    // decode the data
    var characters = json.decode(response.body);
    // print the data
    characters.forEach((character) => print(character['name']));
  } catch (e) {
    print('error caught: $e');
  }
}
