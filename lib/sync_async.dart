import 'package:http/http.dart' as http;

void main() {
  fetch('6558a88206abe346dd67bd0b');
}

fetch(String id) async {
  var url = Uri.parse('https://calm-plum-jaguar-tutu.cyclic.app/');
  var urlGetById =
      Uri.parse('https://calm-plum-jaguar-tutu.cyclic.app/todos/$id');
  var response = await http.get(urlGetById);
  print(response.body);
}
