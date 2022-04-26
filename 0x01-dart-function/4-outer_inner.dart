// outer - Calls the inner function and prints the return
// @name: name that will be printed with inner string
// @id: id that will be printed with inner string
// return: void return ends with print
void outer(String name, String id) {
  var names = name.split(' ');
  var first = names[0];
  var last = '${names[1][0]}.';
// inner - function that returns a string
// return: formatted string
  String inner() {
    return 'Hello Agent $last $first your id is $id';
  }
  print(inner());
}
