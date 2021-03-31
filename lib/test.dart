import 'package:http/http.dart' as http;
import 'package:dotenv/dotenv.dart' show load, env;

void main() async {
  load("./../.env");
  //Get url
  try {
    var url = Uri.parse(env['URL']);

    // Await the http get response
    var response = await http.get(url);

    //If alright
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    print("I am here");
    print(e);
  }
}
