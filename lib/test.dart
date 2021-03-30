import 'package:http/http.dart' as http;

void main() async {
  //Get url
  var url = Uri.parse(
      'https://raw.githubusercontent.com/spdx/license-list-XML/master/src/0BSD.xml');

  // Await the http get response
  var response = await http.get(url);

  //If alright
  if (response.statusCode == 200) {
    print(response.body.runtimeType);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
