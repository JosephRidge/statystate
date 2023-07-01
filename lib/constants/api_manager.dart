import 'package:http/http.dart' as http;

class ApiManager {
  getQuotesRequest(var url) async {
    var response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200 || response.statusCode == 400) {
      return response;
    } else {
      return null;
    }
  }
}
