```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //Specific error handling based on status codes
      print('Request failed with status: ${response.statusCode}.');
      if(response.statusCode == 404){
        print("Resource not found.");
      } else if (response.statusCode == 500) {
        print("Server Error.");
      }
      return null; //Or throw a custom exception
    }
  } on FormatException catch (e) {
    print('Error decoding JSON: $e');
    return null; // Or throw a custom exception
  } on http.ClientException catch (e) {
    print('Network error: $e');
    return null; // Or throw a custom exception
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; // Or throw a custom exception
  }
}
```