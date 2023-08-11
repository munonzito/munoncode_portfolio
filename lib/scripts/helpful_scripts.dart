import 'dart:convert';
import 'package:http/http.dart' as http;
import '../secrets.dart';

String emailListId = "b63ef2a0-33f4-11ee-983b-3155d82a5c55";

Future<void> addContactToEmailList({required String email}) async {
  final String apiUrl = 'https://munoncode-api.vercel.app/api/addContact';

  final Map<String, dynamic> requestData = {
    'api_key': EMAIL_API_KEY,
    'email_address': email,
    'status': 'SUBSCRIBED',
  };

  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  final http.Response response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: jsonEncode(requestData),
  );

  if (response.statusCode == 200) {
    print('Request successful');
  } else {
    print('Request failed with status code');
  }
}
