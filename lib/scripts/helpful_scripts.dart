import 'dart:convert';
import 'package:http/http.dart' as http;
import '../secrets.dart';

String emailListId = "b63ef2a0-33f4-11ee-983b-3155d82a5c55";

Future<void> addContactToEmailList({required String email}) async {
  final String apiUrl =
      'https://emailoctopus.com/api/1.6/lists/$emailListId/contacts';

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
    print('Response: ${response.body}');
  } else {
    print('Request failed with status code ${response.statusCode}');
    print('Response: ${response.body}');
  }
}
