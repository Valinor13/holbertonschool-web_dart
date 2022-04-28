import 'dart:convert';
import '4-main.dart';

// calculateTotal - gets the user data from fetchUserData()
//   converts to json object and calls fetchUserOrders() with the user id
//   calls fetchProductPrice() for each product returned from fetchUserOrders()
//   uses try catch to handle asnyc errors
// returns: the sum of all product prices
Future<double> calculateTotal() async {
  try {
    final Map<String, dynamic> userData =
        await json.decode(await fetchUserData());
    final String id = userData['id'];
    final List<dynamic> userOrders =
        json.decode(await fetchUserOrders(id));
    double total = 0;
    for (final product in userOrders) {
      total += json.decode(await fetchProductPrice(product));
    }
    return total;
  } catch (e) {
    return -1;
  }
}
